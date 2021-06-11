cask "banktivity" do
  version "8.3.3"
  sha256 "bfbd682be7335f3183db317f59b1476615b87f416c903cbe7bb564f54704c430"

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
