cask "balsamiq-wireframes" do
  version "4.1.1"
  sha256 "39b3ad5bf8d9a8a94f9ad0da607e96b674470d91da4c7f0375adadae7530f19e"

  url "https://builds.balsamiq.com/bwd/Balsamiq%20Wireframes%20#{version}.dmg"
  appcast "https://builds.balsamiq.com/bwd/mac.jsonp"
  name "Balsamiq Wireframes"
  homepage "https://balsamiq.com/"

  app "Balsamiq Wireframes.app"

  zap trash: [
    "~/Library/Caches/BalsamiqMockups#{version.major}.*",
    "~/Library/Preferences/BalsamiqMockups#{version.major}",
    "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
    "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
  ]
end
