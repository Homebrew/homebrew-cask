cask "home-assistant" do
  version "2021.2,10"
  sha256 "6d91a98730542c01ffb1359c3d31b0cf8fa96394de6212b04d351a5460b54774"

  url "https://github.com/home-assistant/iOS/releases/download/release%2F#{version.before_comma}%2F#{version.after_comma}/home-assistant-mac.zip",
      verified: "github.com/home-assistant/iOS/"
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
