cask "electerm" do
  version "1.4.2"
  sha256 "c9e5bec2510dc9e201a7e7c0512b2e39822687b1bad4e9c54fbb1699012da51c"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
