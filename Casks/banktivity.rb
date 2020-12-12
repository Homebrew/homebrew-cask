cask "banktivity" do
  version "8.0.5"
  sha256 "c2ab4fd9124c921604e9f867828c5fab8fbc3e267ebec6e5ff79c1a8fbc07f41"

  # iggsoft.com/ was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg"
  appcast "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
