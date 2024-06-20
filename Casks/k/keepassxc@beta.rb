cask "keepassxc@beta" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.9"
  sha256 arm:   "66259a7c020c60a6e842ed8a263b1aea0c5b43c894497d03576266fda9c1f577",
         intel: "a10c5bf17a8107dcae9d19a36a06f5ef7b1cf4ee88046a16cc1073dc84c7f45e"

  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-#{arch}.dmg",
      verified: "github.com/keepassxreboot/keepassxc/"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  conflicts_with cask: "keepassxc"
  depends_on macos: ">= :high_sierra"

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  uninstall quit: "org.keepassxc.keepassxc"

  zap trash: [
    "~/.keepassxc",
    "~/Library/Application Support/CrashReporter/KeePassXC_*.plist",
    "~/Library/Application Support/keepassxc",
    "~/Library/Caches/org.keepassx.keepassxc",
    "~/Library/Logs/DiagnosticReports/KeePassXC_*.crash",
    "~/Library/Preferences/org.keepassx.keepassxc.plist",
    "~/Library/Saved Application State/org.keepassx.keepassxc.savedState",
  ]
end
