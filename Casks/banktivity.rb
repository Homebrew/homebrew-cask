cask "banktivity" do
  version "8.0.1"
  sha256 "aa30ce129ece87c705c9d7f0b29ab8f45f905c2a225d5072cdca4df065ec8258"

  # iggsoft.com/ was verified as official when first introduced to the cask
  url "https://www.iggsoft.com/banktivity/Banktivity#{version}.dmg"
  appcast "https://www.iggsoft.com/banktivity/banktivity-versions-feed.json"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  depends_on macos: ">= :catalina"

  app "Banktivity.app"
end
