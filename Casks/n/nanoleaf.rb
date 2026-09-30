cask "nanoleaf" do
  arch arm: "-arm64"

  version "3.0.0"
  sha256 arm:   "17e2e05a745c39f1770c9889e5dd32781b88666de7c5f2463b8532c8e71483a2",
         intel: "fc3fdbb689cfeb5e14e7289b5b22ee820b137bfe815b3e9cd53967f230602a0d"

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
