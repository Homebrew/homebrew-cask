cask "dosbox" do
  version "0.74-3"
  sha256 "d2ceb2d2b28f03b4c9ca2455bfe08677e78ef8f1a6263b81e7095d237ab26b0d"

  # sourceforge.net/dosbox/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dosbox/dosbox/#{version}/DOSBox-#{version}.dmg"
  appcast "https://sourceforge.net/projects/dosbox/rss?path=/dosbox"
  name "DOSBox"
  homepage "https://www.dosbox.com/"

  app "dosbox.app"

  zap trash: "~/Library/Preferences/DOSBox*"
end
