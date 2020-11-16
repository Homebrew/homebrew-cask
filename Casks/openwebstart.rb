cask "openwebstart" do
  version "1.3.0"
  sha256 "197ef8cbf756cfe11496f011aff1fee22450aacbdff46efe646f1c8a8b12eef9"

  # github.com/karakun/OpenWebStart/ was verified as official when first introduced to the cask
  url "https://github.com/karakun/OpenWebStart/releases/download/v#{version}/OpenWebStart_macos_#{version.dots_to_underscores}.dmg"
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
