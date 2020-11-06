cask "bunqcommunity-bunq" do
  version "0.9.10"
  sha256 "a4c4efeab6225bf0c74bb6ae0547404eeb1d5886708ca8b9d2f87fac3b21646f"

  # github.com/bunqCommunity/bunqDesktop/ was verified as official when first introduced to the cask
  url "https://github.com/bunqCommunity/bunqDesktop/releases/download/#{version}/bunqDesktop-#{version}.dmg"
  appcast "https://github.com/bunqCommunity/bunqDesktop/releases.atom"
  name "bunqDesktop"
  homepage "https://bunqdesk.top/"

  app "bunqDesktop.app"
end
