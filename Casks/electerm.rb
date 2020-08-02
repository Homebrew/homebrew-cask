cask "electerm" do
  version "1.3.55"
  sha256 "1bd3e87ae1a13ac7272f49cf973f844b45349a710652b25a268209bbee9ae392"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast "https://github.com/electerm/electerm/releases.atom"
  name "electerm"
  homepage "https://github.com/electerm/electerm/"

  app "electerm.app"
end
