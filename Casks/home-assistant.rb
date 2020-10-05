cask "home-assistant" do
  version "2020.7,5"
  sha256 "42513d9f648ab332eb45cadbb73d0d2c04b54ddc9f426943417e72d2daf43a21"

  # github.com/home-assistant/iOS/ was verified as official when first introduced to the cask
  url "https://github.com/home-assistant/iOS/releases/download/release%2F#{version.before_comma}%2F#{version.after_comma}/home-assistant-mac.zip"
  appcast "https://github.com/home-assistant/iOS/releases.atom"
  name "Home Assistant"
  desc "Companion app for Home Assistant home automation software"
  homepage "https://companion.home-assistant.io/"

  depends_on macos: ">= :catalina"

  app "Home Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/io.robbie.HomeAssistant",
    "~/Library/Group Containers/group.io.robbie.homeassistant",
    "~/Library/Containers/io.robbie.HomeAssistant",
  ]
end
