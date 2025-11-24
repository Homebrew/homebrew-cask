cask "keepassxc@beta" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.11"
  sha256 arm:   "eac316a1dce12c0b1f3bfec957ca58d828fa1cd2b1eebfcd4ff9361926675b37",
         intel: "ee4cf677246d696e9ad80fd21e65f137e38512cdc39720c10ed165c82fa95250"

  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-#{arch}.dmg",
      verified: "github.com/keepassxreboot/keepassxc/"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "keepassxc",
    "keepassxc@snapshot",
  ]
  depends_on macos: ">= :monterey"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"
  manpage "#{appdir}/KeePassXC.app/Contents/Resources/man/man1/keepassxc.1"
  manpage "#{appdir}/KeePassXC.app/Contents/Resources/man/man1/keepassxc-cli.1"

  uninstall quit: "org.keepassxc.keepassxc"

  zap trash: [
    "~/.keepassxc",
    "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
    "~/Library/Application Support/keepassxc",
    "~/Library/Caches/org.keepassx.keepassxc",
    "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
    "~/Library/Preferences/keepassxc.keepassxc.plist",
    "~/Library/Preferences/org.keepassx.keepassxc.plist",
    "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
  ]
end
