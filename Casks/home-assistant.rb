cask "home-assistant" do
  version "2020.7,1"
  sha256 "118fb5a137784c0f546157a08d04d02925e94da0d804bd6aa17458a246df247a"

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/home-assistant/iOS/releases/download/mac/#{version.before_comma}/#{version.after_comma}/home-assistant-mac.zip"
  appcast "https://github.com/home-assistant/iOS/releases.atom"
  name "Home Assistant"
  desc "Companion app for Home Assistant home automation software"
  homepage "https://companion.home-assistant.io/"

  app "Home Assistant.app"
end
