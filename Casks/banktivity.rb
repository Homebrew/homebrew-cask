cask "banktivity" do
  version "8.3.2"
  sha256 "4de80f72a7d2a1a6d8c7cfdc72198b08a9dfb08ec93541460d47ff007d1fe80c"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg",
      verified: "iggsoft.com/"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  livecheck do
    url "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)*)"/i)
  end

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
