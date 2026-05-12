cask "nanoleaf" do
  arch arm: "-arm64"

  version "2.4.4"
  sha256 arm:   "dde2bc2d6ac9f5f77d0730003502e15d93092a9ade0850feda64af631fa9b313",
         intel: "3d52e26a85d580865fa2fae2c3c90262234d622be18f29cd0499ceff93d7b8ae"

  url "https://desktop-app-prod-3.s3.us-west-2.amazonaws.com/Nanoleaf%20Desktop-#{version}#{arch}.dmg",
      verified: "desktop-app-prod-3.s3.us-west-2.amazonaws.com/"
  name "Nanoleaf Desktop"
  desc "Control your Nanoleaf lights"
  homepage "https://nanoleaf.me/"

  livecheck do
    url "https://desktop-app-prod-3.s3.us-west-2.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Nanoleaf Desktop.app"

  zap trash: [
    "~/Library/Application Support/Nanoleaf Desktop",
    "~/Library/Preferences/me.nanoleaf.desktop-app.plist",
    "~/Library/Saved Application State/me.nanoleaf.desktop-app.savedState",
  ]
end
