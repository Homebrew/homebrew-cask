cask "keepassxc" do
  if Hardware::CPU.intel?
    version "2.6.4"
  else
    version "2.6.4-2"
  end

  if Hardware::CPU.intel?
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-x86_64.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "639fdfe0379dc3f00f1bd6a72c974cfddae0d4c8ddb66f7297d0b01b1a582ede"
  else
    url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version.sub(/-\d+/, "")}/KeePassXC-#{version}-arm64.dmg",
        verified: "github.com/keepassxreboot/keepassxc/"
    sha256 "49c28e3f6341710b24d4415186ec0a52f6c0af5e72c0fc7548ddd7999d2eaa4d"
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
