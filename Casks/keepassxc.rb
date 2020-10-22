cask "keepassxc" do
  version "2.6.2"
  sha256 "29bfaf99f2c8a47063b2da0b67054f10c90cafe248db84411a26ecc974711ba7"

  # github.com/keepassxreboot/keepassxc/ was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast "https://github.com/keepassxreboot/keepassxc/releases.atom"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

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
