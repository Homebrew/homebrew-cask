cask "amadine" do
  version "1.1"
  sha256 "eb319aaf5d9e70a2da9a50e1eaccbead7487910f7e610b5c45f06e1ce6b804c1"

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/Amadine.dmg"
  appcast "https://www.belightsoft.com/download/updates/appcast_Amadine.xml"
  name "Amadine"
  desc "Vector graphic and illustration software"
  homepage "https://amadine.com/"

  depends_on macos: ">= :sierra"

  app "Amadine.app"
end
