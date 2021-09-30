cask "leapp" do
  version "0.7.2"
  sha256 "8a32fb62f263f2e03904494acec563683678a32f85d9a78bd9bc736e7d1288ce"

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
