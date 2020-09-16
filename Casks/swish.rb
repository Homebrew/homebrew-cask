cask "swish" do
  version "1.6"
  sha256 "4e6cd2e1e6e35db0b52d0033be80e023001212bc4e59da4f644676437c4c496c"

  # github.com/chrenn/swish-dl/ was verified as official when first introduced to the cask
  url "https://github.com/chrenn/swish-dl/releases/download/#{version}/Swish.zip"
  appcast "https://highlyopinionated.co/swish/appcast.xml"
  name "Swish"
  homepage "https://highlyopinionated.co/swish/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Swish.app"
end
