cask "nanoleaf" do
  arch arm: "-arm64"

  version "3.0.2"
  sha256 arm:   "b69cca3f553f71b8c9e39d86da100d4b8480a2a35e7d178db1f22fe57e625a3f",
         intel: "495106a909ea27e9168b4838572e1ff9ca97845647db05ede498efb46fd5b0fb"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/me.nanoleaf.desktop-app.sfl*",
    "~/Library/Application Support/Nanoleaf Desktop",
    "~/Library/Preferences/me.nanoleaf.desktop-app.plist",
    "~/Library/Saved Application State/me.nanoleaf.desktop-app.savedState",
  ]
end
