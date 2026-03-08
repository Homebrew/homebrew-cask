cask "sky" do
  version "0.5.1"
  sha256 "4d20a4618f1adc5a3f07f372e3293c35137f3452ea6a5d3fdc57fe7d2c775b39"

  url "https://github.com/jcsalterego/Sky.app/releases/download/#{version}/Sky.#{version}.dmg"
  name "Sky"
  desc "Bluesky Social client"
  homepage "https://github.com/jcsalterego/Sky.app"

  depends_on macos: ">= :big_sur"

  app "Sky.app"

  zap trash: [
    "~/Library/Application Scripts/jcsalterego.Sky",
    "~/Library/Containers/jcsalterego.Sky",
  ]
end
