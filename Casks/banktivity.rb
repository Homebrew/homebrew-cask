cask "banktivity" do
  version "8.2"
  sha256 "75c8dc32ece1972ec7c5aa0f886bec7eb6b54fe72fb1a6aa9e6de4ff3091eeb3"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg",
      verified: "iggsoft.com/"
  appcast "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
