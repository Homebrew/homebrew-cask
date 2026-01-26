cask "openwebstart" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "00e0dc4e5e22deb1301ac0fe4e2ba8b453070217c91fc73e614be9dc8ffa18e9",
         intel: "a6e746755c4c9ed8dc90035fb6ae814ef7c46d4c364d974c6509c5641a2b0d48"

  url "https://github.com/karakun/OpenWebStart/releases/download/v#{version}/OpenWebStart_macos-#{arch}_#{version.dots_to_underscores}.dmg",
      verified: "github.com/karakun/OpenWebStart/"
  name "OpenWebStart"
  desc "Tool to run Java Web Start-based applications after the release of Java 11"
  homepage "https://openwebstart.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  installer script: {
    executable:   "#{staged_path}/OpenWebStart Installer.app/Contents/MacOS/JavaApplicationStub",
    args:         ["-q"],
    sudo:         true,
    print_stderr: false,
  }

  uninstall_preflight do
    set_ownership "/Applications/OpenWebStart"
  end

  uninstall \
    script: {
      executable:   "/Applications/OpenWebStart/OpenWebStart Uninstaller.app/Contents/MacOS/JavaApplicationStub",
      args:         ["-q"],
      sudo:         true,
      print_stderr: false,
    },
    delete: "/Applications/OpenWebStart"

  zap trash: [
    "~/.cache/icedtea-web",
    "~/.config/icedtea-web",
  ]
end
