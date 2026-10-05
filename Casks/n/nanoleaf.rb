cask "nanoleaf" do
  arch arm: "-arm64"

  version "3.0.1"
  sha256 arm:   "4cc54c26e2da9c947b7322e07e18ced68e6b6236fd2734cdc931400fa477b28d",
         intel: "bfb5679628bc3afb6443d969785f8f7c8135f155f276b20fb848f5376579dc41"

  url "https://desktop-app-prod-3.s3.us-west-2.amazonaws.com/Nanoleaf%20Desktop-#{version}#{arch}.dmg"
  name "Nanoleaf Desktop"
  desc "Control your Nanoleaf lights"
  homepage "https://nanoleaf.me/", browsed: "2026-09-30"

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
