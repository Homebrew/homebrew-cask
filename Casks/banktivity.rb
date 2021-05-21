cask "banktivity" do
  version "8.2.2"
  sha256 "f598ec9310f3cbb7253a8ea2a4fe0c7011c85e30a505bd44a718c5d1c7da56c5"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg",
      verified: "iggsoft.com/"
  appcast "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
