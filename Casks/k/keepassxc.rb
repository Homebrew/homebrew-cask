cask "keepassxc" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.11"
  sha256 arm:   "11c514ed9fcc33b82d2a8e113bfc989b5834335dafd7a5dadd8942410cfbd025",
         intel: "fc04dfbba1f5208ea547af68617f7a6022a73fb841f307ff5f7b2c537320e2c9"

  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-1-#{arch}.dmg",
      verified: "github.com/keepassxreboot/keepassxc/"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "keepassxc@beta",
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
