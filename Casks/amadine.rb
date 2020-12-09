cask "amadine" do
  version "1.1,87"
  sha256 :no_check

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/Amadine.dmg"
  appcast "https://www.belightsoft.com/download/updates/appcast_Amadine.xml"
  name "Amadine"
  desc "Vector graphic and illustration software"
  homepage "https://amadine.com/"

  depends_on macos: ">= :sierra"

  app "Amadine.app"
end
