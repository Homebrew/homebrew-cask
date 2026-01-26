cask "nanoleaf" do
  arch arm: "-arm64"

  version "2.3.5"
  sha256 arm:   "8955eec5a4b662bcadd3895dacf34502ab7dfca41a13ac5658475cf35c2507e7",
         intel: "e1c016f32f15f4a506ad7ef42711daefdeaa1ffdd7e6ed9f2bd0fdc9fcdb5a8d"

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
