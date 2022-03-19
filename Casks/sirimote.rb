cask "sirimote" do
  version "1.4.4,34"
  sha256 :no_check

  url "https://eternalstorms.at/sirimote/SiriMote.zip"
  name "SiriMote"
  desc "Control your computer with your Apple TV Siri Remote"
  homepage "https://eternalstorms.at/sirimote"

  livecheck do
    url "https://eternalstorms.at/sirimote/updatefeed.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "SiriMote.app"

  zap trash: "~/Library/Preferences/at.EternalStorms.SiriMote-nonappstore.plist"
end
