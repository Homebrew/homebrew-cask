cask "openwebstart" do
  arch arm: "aarch64", intel: "x64"

  version "1.14.1"
  sha256 arm:   "b258281ccb61a05ca7e796d4cf64c12b11804d98ab8d506774e254779e1d0b6b",
         intel: "f7a9049a4c385144efdce43bf7a763d81773fa4374fd6ed5fe6ad99fede1caea"

  url "https://github.com/karakun/OpenWebStart/releases/download/v#{version}/OpenWebStart_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "OpenWebStart"
  desc "Tool to run Java Web Start-based applications after the release of Java 11"
  homepage "https://openwebstart.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  installer script: {
    executable:   "#{staged_path}/OpenWebStart Installer.app/Contents/MacOS/JavaApplicationStub",
    args:         ["-q"],
    sudo:         true,
    print_stderr: false,
  }

  uninstall_preflight_steps do
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
