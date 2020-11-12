cask "swish" do
  version "1.7"
  sha256 "f969bf057a713637cf2de73ee5274173cbedbfd16fd9fda808f7a7823643e01a"

  # github.com/chrenn/swish-dl/ was verified as official when first introduced to the cask
  url "https://github.com/chrenn/swish-dl/releases/download/#{version}/Swish.zip"
  appcast "https://highlyopinionated.co/swish/appcast.xml"
  name "Swish"
  desc "Control windows and applications right from your trackpad"
  homepage "https://highlyopinionated.co/swish/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Swish.app"
end
