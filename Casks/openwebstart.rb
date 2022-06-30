cask "openwebstart" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "1.6.0"

  if Hardware::CPU.intel?
    sha256 "c2a71ce2e22adbf96aab869f0c96b2d26f839eace0d6692bf861070334fb2898"
  else
    sha256 "c4b738e7a0ddc76d6a40a913bede9f205d421b7b596b329ecb96438a7d048b72"
  end

  url "https://github.com/karakun/OpenWebStart/releases/download/v#{version}/OpenWebStart_macos-#{arch}_#{version.dots_to_underscores}.dmg",
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
