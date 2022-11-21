cask "centered" do
  version "5.5.0"
  sha256 "6a283e76ed087ae062b2ee69e137cd6016ee5161f0274c024813b7c0b9825e26"

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
