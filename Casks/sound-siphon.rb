cask "sound-siphon" do
  version "3.2.4,5876"
  sha256 "c05ce45e0eb4950926ffdfdca6a49540e562f756475df68aed2d39db53156e3f"

  # staticz.net/ was verified as official when first introduced to the cask
  url "https://staticz.com/download/#{version.after_comma}/"
  appcast "http://staticz.net/updates/soundsiphon#{version.major}.rss"
  name "SoundSiphon"
  homepage "https://staticz.com/soundsiphon/"

  app "Sound Siphon.app"
end
