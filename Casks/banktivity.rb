cask "banktivity" do
  version "8.7.7"
  sha256 "63c3c30da83d4f4f131686d7d4f23975e0afb531e8a029256ae4aa551795b49f"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg",
      verified: "iggsoft.com/"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  livecheck do
    url "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :catalina"

  app "Banktivity.app"

  zap trash: [
    "~/Library/Application Scripts/com.iggsoftware.banktivity",
    "~/Library/Containers/com.iggsoftware.banktivity",
  ]
end
