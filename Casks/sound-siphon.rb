cask "sound-siphon" do
  version "3.3.6"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://staticz.com/download/5876/"
  name "SoundSiphon"
  desc "App audio capture"
  homepage "https://staticz.com/soundsiphon/"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "Sound Siphon.app"
end
