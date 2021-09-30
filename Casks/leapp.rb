cask "leapp" do
  version "0.7.1"
  sha256 "68636e8ab478213587b0e61508f4a44c817dd377618f7dfdcafea98eb3986255"

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
