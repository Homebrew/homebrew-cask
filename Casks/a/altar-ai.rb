cask "altar-ai" do
  version "2.0.4"
  sha256 "a8ef2af2af1b682742e889985f1cd2c0d75247fdf3d3b12be4d2c56bca23eeb7"

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
