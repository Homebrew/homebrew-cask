cask "altar-ai" do
  version "2.2.1"
  sha256 "aca9c044a65e4a9833d232bb04760db0d910e76790d5de276e03f97aa9fca5bc"

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
