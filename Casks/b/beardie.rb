cask "beardie" do
  version "3.0.24.84.Release"
  sha256 "d4361bc06beab9e868b746695506656603febe02c32539ffc15a5a7b642425dd"

  url "https://github.com/Stillness-2/beardie/releases/download/v#{version}/Beardie.app.zip"
  name "Beardie"
  desc "Control various media players with your keyboard"
  homepage "https://github.com/Stillness-2/beardie"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Beardie.app"

  zap trash: [
    "~/Library/Caches/com.calm-apps.mac.beardie",
    "~/Library/Preferences/com.calm-apps.mac.beardie.plist",
  ]
end
