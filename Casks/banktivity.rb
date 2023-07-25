cask "banktivity" do
  version "9.0.2-243"
  sha256 "c13f318d8926dba021dff327601662d11f610632e05d571a705be4647e511b06"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg",
      verified: "www.iggsoft.com/banktivity/"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  livecheck do
    url "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
    regex(/Banktivityv?(\d+(?:[._-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Banktivity.app"

  zap trash: [
    "~/Library/Application Scripts/com.iggsoftware.banktivity",
    "~/Library/Containers/com.iggsoftware.banktivity",
  ]
end
