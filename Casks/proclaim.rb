cask "proclaim" do
  version "3.0.0.0038"
  sha256 "0df0758dca6b2050f3902a4b8ceb41a916df6f7ccd18b0709ed5c430c99c8ed8"

  # logoscdn.com/Proclaim/ was verified as official when first introduced to the cask
  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim.dmg"
  appcast "http://downloads.proclaimonline.com/mac/appcast.xml"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
