cask "openwebstart" do
  version "1.3.1"
  sha256 "ca0b9f5f6cf98152c26f17c726c3456ac684aba42378a1e1beec59dcfeb98ed5"

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
