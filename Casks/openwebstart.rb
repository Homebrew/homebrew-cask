cask "openwebstart" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "104f2d83365074d05dd3788d80dc642e55fb568cb0b2ed3db78efa59a1016bd7",
         intel: "eecff527c1eced6b6cc0c9a79d1336c4b912c1653602a4de244bbda72e03913f"

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
