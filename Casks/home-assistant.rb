cask "home-assistant" do
  version "2020.7,9"
  sha256 "fe4f059d2dd2a7043027f44dc881866c6e70819fd576ae707cac92c78be392cb"

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
