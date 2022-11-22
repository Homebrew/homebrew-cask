cask "socket_vmnet" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "789f1225d509ab98cab11c7197eea334a17d50c0ce4d480f2c93be34c7317ee7",
         intel: "ba53b693bbb264efe260136ccdfe196152d68a3eb635c5a9c5a39fdb55035e5a"

  url "https://github.com/lima-vm/socket_vmnet/releases/download/v#{version}/socket_vmnet-#{version}-#{arch}.tar.gz"
  # Exception: the underscore is included in the cask token because the underscore is the part of the project
  name "socket_vmnet"
  desc "Daemon to provide vmnet.framework support for rootless QEMU"
  homepage "https://github.com/lima-vm/socket_vmnet"

  livecheck do
    url :url
    strategy :github_latest
  end

  # /opt/socket_vmnet is the path recognized by Lima and minikube.
  artifact "opt/socket_vmnet", target: "/opt/socket_vmnet"
  artifact "opt/socket_vmnet/share/doc/socket_vmnet/launchd/io.github.lima-vm.socket_vmnet.plist",
           target: "/Library/LaunchDaemons/io.github.lima-vm.socket_vmnet.plist"

  postflight do
    # The daemon (/opt/socket_vmnet/bin/socket_vmnet) run as the root.
    # So, its executable path must NOT be writable by non-root.
    set_ownership("/opt/socket_vmnet", user: "root", group: "wheel")
    set_ownership("/Library/LaunchDaemons/io.github.lima-vm.socket_vmnet.plist", user: "root", group: "wheel")
    # Remove the xattr to avoid the "cannot be opened because the developer cannot be verified" error
    # https://github.com/alacritty/alacritty/issues/4673#issuecomment-771291615
    # (`spctl --add` might be more preferrable but it hangs on CI for waiting the password)
    system_command "/usr/bin/xattr",
                   args: ["-rd",
                          "com.apple.quarantine",
                          "/opt/socket_vmnet/bin/socket_vmnet",
                          "/opt/socket_vmnet/bin/socket_vmnet_client"],
                   sudo: true
    # Run a smoke test to confirm that the xattr command above is effective.
    system_command "/opt/socket_vmnet/bin/socket_vmnet", args: ["--version"]
    # Install the launchd service.
    #
    # Try "enable" before "bootstrap" to avoid "Bootstrap failed: 119: Service is disabled"
    # (occurs when the service was previous installed and disabled)
    system_command "/bin/launchctl",
                   args: ["enable", "system/io.github.lima-vm.socket_vmnet"],
                   sudo: true
    system_command "/bin/launchctl",
                   args: ["bootstrap", "system", "/Library/LaunchDaemons/io.github.lima-vm.socket_vmnet.plist"],
                   sudo: true
    system_command "/bin/launchctl",
                   args: ["enable", "system/io.github.lima-vm.socket_vmnet"],
                   sudo: true
    system_command "/bin/launchctl",
                   args: ["kickstart", "-kp", "system/io.github.lima-vm.socket_vmnet"],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership("/opt/socket_vmnet")
  end

  uninstall launchctl: "io.github.lima-vm.socket_vmnet"

  caveats <<~EOS
    The launchd service "io.github.lima-vm.socket_vmnet" is being installed for the shared mode (aka NAT mode).

    To show the service status:
      launchctl print system/io.github.lima-vm.socket_vmnet

    To disable the service:
      sudo launchctl bootout system/io.github.lima-vm.socket_vmnet

    To install the service for the bridged mode (run inside `sudo -i`):
      # Change this value to the name of your actual network device
      BRIDGED=en0
      sed -e "s/en0/${BRIDGED}/g" /opt/socket_vmnet/share/doc/socket_vmnet/launchd/io.github.lima-vm.socket_vmnet.bridged.en0.plist >/Library/LaunchDaemons/io.github.lima-vm.socket_vmnet.bridged.${BRIDGED}.plist
      launchctl bootstrap system /Library/LaunchDaemons/io.github.lima-vm.socket_vmnet.bridged.${BRIDGED}.plist
      launchctl enable system/io.github.lima-vm.socket_vmnet.bridged.${BRIDGED}
      launchctl kickstart -kp system/io.github.lima-vm.socket_vmnet.bridged.${BRIDGED}
  EOS
end
