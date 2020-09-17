cask "keepassxc" do
  version "2.6.1"
  sha256 "ac0a74369f4009a6d5922840c3df8fe4641c11af8643cc60b9ba6103ff1eceda"

  # github.com/keepassxreboot/keepassxc/ was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}.dmg"
  appcast "https://github.com/keepassxreboot/keepassxc/releases.atom"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

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
