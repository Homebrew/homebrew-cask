cask "home-assistant" do
  version "2021.1,1"
  sha256 "92c6d42876d6e3091c6d16ccccb675caf6a317f4b1f219fe222b548031b0da93"

  url "https://github.com/home-assistant/iOS/releases/download/release%2F#{version.before_comma}%2F#{version.after_comma}/home-assistant-mac.zip",
      verified: "github.com/home-assistant/iOS/"
  name "Home Assistant"
  desc "Companion app for Home Assistant home automation software"
  homepage "https://companion.home-assistant.io/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map { |tag|
        match = tag.match(%r{^release/(\d+(?:\.\d+)*)/(\d+)$})
        "#{match[1]},#{match[2]}" if match
    end
  end

  depends_on macos: ">= :catalina"

  app "Home Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/io.robbie.HomeAssistant",
    "~/Library/Group Containers/group.io.robbie.homeassistant",
    "~/Library/Containers/io.robbie.HomeAssistant",
  ]
end
