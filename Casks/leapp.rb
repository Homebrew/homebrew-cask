cask "leapp" do
  version "0.6.2"
  sha256 "00c72c4c5e8138e65bbdc08fe75676688275b453335d9ba001a1fe38372ae281"

  url "https://asset.noovolari.com/latest/Leapp-#{version}-mac.zip",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  container nested: "temp/Leapp-#{version}.dmg"

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
