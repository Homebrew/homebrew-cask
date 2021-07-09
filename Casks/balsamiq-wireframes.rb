cask "balsamiq-wireframes" do
  version "4.2.6"
  sha256 "4c3f79d4985995e9ca7adf156bd32c977cdf7463a9875a04f4017ca87a936ace"

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
