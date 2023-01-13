cask "centered" do
  version "5.7.3"
  sha256 "e4be6efd04d97b119eaa6fd38eddc11b5397d1954b7a0e0f8c16c453dac67e09"

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
