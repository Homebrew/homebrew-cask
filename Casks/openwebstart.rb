cask "openwebstart" do
  version "1.5.2"
  sha256 "7e53421fd008b8ed18e1f805921e37e7622d72aa3a65f137a8ca808d36e0b696"

  url "https://github.com/karakun/OpenWebStart/releases/download/v#{version}/OpenWebStart_macos_#{version.dots_to_underscores}.dmg",
      verified: "github.com/karakun/OpenWebStart/"
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
