cask "balsamiq-wireframes" do
  version "4.5.5"
  sha256 "b7ae82a1b8a8cfd5e899cda37e207411656a36cfc1ef1c3dd06a3ac330a783d8"

  url "https://builds.balsamiq.com/bwd/Balsamiq%20Wireframes%20#{version}.dmg"
  name "Balsamiq Wireframes"
  desc "UI wireframing tool"
  homepage "https://balsamiq.com/"

  livecheck do
    url "https://builds.balsamiq.com/bwd/mac.jsonp"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  app "Balsamiq Wireframes.app"

  zap trash: [
    "~/Library/Caches/BalsamiqMockups#{version.major}.*",
    "~/Library/Preferences/BalsamiqMockups#{version.major}",
    "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
    "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
  ]
end
