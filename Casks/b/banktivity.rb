cask "banktivity" do
  version "9.1.1-247"
  sha256 "e8e6c93f0514b614c213ca1bef9eea907a09e21dde2c0ae0ce2fa1e2a6a997a1"

  url "https://www.iggsoft.com/banktivity/Banktivity9.1.1-247.dmg"
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
