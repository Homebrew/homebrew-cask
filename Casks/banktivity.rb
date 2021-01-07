cask "banktivity" do
  version "8.1.1"
  sha256 "9edd9176022a3a65a044c0ba2c5fee7efe4693f3e3d7ef6403597401994e230e"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg",
      verified: "iggsoft.com/"
  appcast "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
