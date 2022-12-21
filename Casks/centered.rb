cask "centered" do
  version "5.7.0"
  sha256 "a8dffb08a038a8809e641b4a4cbd3c8731eeec9be2464501e21a08b2737d7c4f"

  url "https://d3ni5jxar6n4fz.cloudfront.net/Centered-#{version}-universal.dmg",
      verified: "d3ni5jxar6n4fz.cloudfront.net/"
  name "Centered"
  desc "Flow state app for productivity"
  homepage "https://www.centered.app/"

  livecheck do
    url "https://centered-desktop-release.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Centered.app"

  zap trash: [
    "~/Library/Application Support/Centered",
    "~/Library/Preferences/app.centered.mac.prod.plist",
    "~/Library/Saved Application State/app.centered.mac.prod.savedState",
  ]
end
