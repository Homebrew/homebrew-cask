cask "banktivity" do
  version "8.1"
  sha256 "d3b0fcaed4147c1d176ca6ce1949fb081e4a5b17616793c0455e5fd14cada64a"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg",
      verified: "iggsoft.com/"
  appcast "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
