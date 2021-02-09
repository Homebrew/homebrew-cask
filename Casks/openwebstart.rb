cask "openwebstart" do
  version "1.3.2"
  sha256 "21ba834089555da19fd1c54e3d3b9ab44fef262bf4aed8e4140305d17f913e98"

  url "https://github.com/karakun/OpenWebStart/releases/download/v#{version}/OpenWebStart_macos_#{version.dots_to_underscores}.dmg",
      verified: "github.com/karakun/OpenWebStart/"
  appcast "https://github.com/karakun/OpenWebStart/releases.atom"
  name "OpenWebStart"
  desc "Tool to run Java Web Start-based applications after the release of Java 11"
  homepage "https://openwebstart.com/"

  installer script: {
    executable:   "#{staged_path}/OpenWebStart Installer.app/Contents/MacOS/JavaApplicationStub",
    args:         ["-q"],
    sudo:         true,
    print_stderr: false,
  }

  uninstall_preflight do
    set_ownership "/Applications/OpenWebStart"
  end

  uninstall script: {
    executable: "/Applications/OpenWebStart/OpenWebStart Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-c"],
    sudo:       true,
  }

  zap trash: [
    "~/.config/icedtea-web",
    "~/.cache/icedtea-web",
    "/Applications/OpenWebStart",
  ]
end
