cask "banktivity" do
  version "8.7.5"
  sha256 "4ac9a7241d829d869f156b2879a78519e31f7b12c6bc6940f87dd2967be16e6e"

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
