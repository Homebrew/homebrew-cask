cask "nanoleaf" do
  arch arm: "-arm64"

  version "2.5.0"
  sha256 arm:   "d05bde80876e0f132ea73f28b8739dd0bee7533322898666e4638cb19400d164",
         intel: "eda74a15cad07233908e019be9b214c9c07e4adda1d5ca409c5296af3c1feb83"

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
