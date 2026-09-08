cask "altar-ai" do
  version "2.0.5"
  sha256 "8d3fa8840c0ca370b99873a4dfd49950b3f722be1c224f36cba973bfacf7fb16"

  url "https://altar-prototype.sgp1.cdn.digitaloceanspaces.com/releases/v#{version}/altar-app-#{version}.dmg"
  name "Altar AI"
  desc "AI-powered meeting assistant"
  homepage "https://app.altar.inc/"

  livecheck do
    url "https://altar-prototype.sgp1.cdn.digitaloceanspaces.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Altar AI.app"

  zap trash: [
    "~/Library/Application Support/altar-app",
    "~/Library/Caches/com.electron.altar-app",
    "~/Library/Preferences/com.electron.altar-app.plist",
    "~/Library/Saved Application State/com.electron.altar-app.savedState",
  ]
end
