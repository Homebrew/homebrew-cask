cask "balsamiq-wireframes" do
  version "4.1.8"
  sha256 "46eb55d3be1b639fc857ec534ac273727908c6e764770a9ca6f9df93596f7774"

  url "https://builds.balsamiq.com/bwd/Balsamiq%20Wireframes%20#{version}.dmg"
  appcast "https://builds.balsamiq.com/bwd/mac.jsonp"
  name "Balsamiq Wireframes"
  desc "UI wireframing tool"
  homepage "https://balsamiq.com/"

  app "Balsamiq Wireframes.app"

  zap trash: [
    "~/Library/Caches/BalsamiqMockups#{version.major}.*",
    "~/Library/Preferences/BalsamiqMockups#{version.major}",
    "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
    "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
  ]
end
