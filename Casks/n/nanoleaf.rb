cask "nanoleaf" do
  arch arm: "-arm64"

  version "2.4.2"
  sha256 arm:   "ab9b0dcc3d1a6568d996bdd9ded4a7f78ecd2ae696bba742dc69f1e611909dfa",
         intel: "752388f1f2d69428dde0836b31fa2db2bf0ae25a6e6aaf13f160be4798e236cd"

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
  depends_on macos: ">= :monterey"

  app "Nanoleaf Desktop.app"

  zap trash: [
    "~/Library/Application Support/Nanoleaf Desktop",
    "~/Library/Preferences/me.nanoleaf.desktop-app.plist",
    "~/Library/Saved Application State/me.nanoleaf.desktop-app.savedState",
  ]
end
