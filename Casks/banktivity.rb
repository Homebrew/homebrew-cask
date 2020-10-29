cask "banktivity" do
  version "8.0.0.29"
  sha256 "86587d772564d64436b131e2d8131af79a0d49909c47f230a1ea2c8efb9a3ab5"

  # iggsoft.com/ was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg"
  appcast "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
