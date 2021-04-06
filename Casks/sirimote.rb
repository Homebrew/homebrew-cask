cask "sirimote" do
  version "1.3.9,27"
  sha256 :no_check

  url "https://eternalstorms.at/sirimote/SiriMote.zip"
  name "SiriMote"
  homepage "https://eternalstorms.at/sirimote"

  livecheck do
    url "https://eternalstorms.at/sirimote/updatefeed.xml"
    strategy :sparkle
  end

  app "SiriMote.app"
end
