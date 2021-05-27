cask "banktivity" do
  version "8.3"
  sha256 "60af1f27f358c6d24d0de813883fc69617ef934fc77bbd3d0ec996e36ea5640f"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg",
      verified: "iggsoft.com/"
  appcast "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
