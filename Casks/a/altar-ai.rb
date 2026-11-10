cask "altar-ai" do
  version "3.0.0"
  sha256 "99bc5d69089c717199a531609174710949f5de12d0e9d8c022cef201f70b1f17"

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
