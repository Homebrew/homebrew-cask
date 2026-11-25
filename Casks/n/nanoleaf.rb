cask "nanoleaf" do
  arch arm: "-arm64"

  version "3.0.3"
  sha256 arm:   "2d16447d284b8159e57e39359af79856bddf62950ff9de6338f0afd60673624d",
         intel: "dea115021ec1bf37205f3f2f65b3c5e3e265c3d416c93e609c993bff03d1a47e"

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
