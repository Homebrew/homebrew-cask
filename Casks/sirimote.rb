cask "sirimote" do
  version "1.3.9,27"
  sha256 :no_check

  url "https://eternalstorms.at/sirimote/SiriMote.zip"
  appcast "https://eternalstorms.at/sirimote/updatefeed.xml"
  name "SiriMote"
  homepage "https://eternalstorms.at/sirimote"

  app "SiriMote.app"
end
