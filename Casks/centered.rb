cask "centered" do
  version "3.3.1"
  sha256 "a498db40f8a7f5f5c5a6a3d868c5046527746a006ee2e554afc970873e44f078"

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
end
