cask "pally" do
  version "1.99.1"
  sha256 :no_check

  url "https://pally.com/sparkle/Pally-Installer-Latest.dmg"
  name "Pally"
  desc "AI Relationship Management"
  homepage "https://pally.com/"

  livecheck do
    url "https://sparkle-pally-updates.pages.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Pally.app"

  zap trash: [
    "~/Library/Application Support/Pally",
    "~/Library/Caches/pally.Pally",
    "~/Library/Preferences/pally.Pally.plist",
    "~/Library/Saved Application State/pally.Pally.savedState",
  ]
end
