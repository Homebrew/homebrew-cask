cask "home-assistant" do
  version "2020.7,3"
  sha256 "9117bd94e6e72963a12073c349d7975b71b4b07e4534eb4c9be2532447522762"

  # github.com/home-assistant/iOS/ was verified as official when first introduced to the cask
  url "https://github.com/home-assistant/iOS/releases/download/mac/#{version.before_comma}/#{version.after_comma}/home-assistant-mac.zip"
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
