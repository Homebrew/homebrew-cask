cask "keepassxc" do
  version "2.6.6"

  if Hardware::CPU.intel?
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-x86_64.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "ab96033c16459de5a95e1f9e5864a5bd8cc47b4f3dee2c68ede6199dd44286ec"
  else
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-arm64.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "9dc121bb08f5b46186930ac9ba189553cec2c2ce9688df466e9ce1d9d75fe8c5"
  end

  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "homebrew/cask-versions/keepassxc-beta"
  depends_on macos: ">= :high_sierra"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: [
    "~/.keepassxc",
    "~/Library/Application Support/keepassxc",
    "~/Library/Caches/org.keepassx.keepassxc",
    "~/Library/Preferences/org.keepassx.keepassxc.plist",
    "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
    "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
    "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
  ]
end
