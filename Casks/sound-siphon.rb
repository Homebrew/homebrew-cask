cask "sound-siphon" do
  version "3.3.3"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://staticz.com/download/5876/"
  name "SoundSiphon"
  desc "App audio capture"
  homepage "https://staticz.com/soundsiphon/"

  livecheck do
    url "http://staticz.net/updates/soundsiphon#{version.major}.rss"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Sound Siphon.app"
end
