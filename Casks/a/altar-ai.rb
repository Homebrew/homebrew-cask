cask "altar-ai" do
  version "1.9.2"
  sha256 "07c15ad46a2d43f2fc766ff3167c3e6b5889ae761700d825bf3f3232209d8cc1"

  url "https://altar-prototype.sgp1.cdn.digitaloceanspaces.com/releases/v#{version}/altar-app-#{version}.dmg",
      verified: "altar-prototype.sgp1.cdn.digitaloceanspaces.com/"
  name "Altar AI"
  desc "AI-powered meeting assistant"
  homepage "https://app.altar.inc/"

  livecheck do
    url "https://altar-prototype.sgp1.cdn.digitaloceanspaces.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Altar AI.app"

  zap trash: [
    "~/Library/Application Support/altar-app",
    "~/Library/Caches/com.electron.altar-app",
    "~/Library/Preferences/com.electron.altar-app.plist",
    "~/Library/Saved Application State/com.electron.altar-app.savedState",
  ]
end
