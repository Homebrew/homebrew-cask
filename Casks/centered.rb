cask "centered" do
  version "5.9.3"
  sha256 "ea7d39aec7db99ab93a3caa0d782be4cfb8dba63eafa8742b59428511930941e"

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
