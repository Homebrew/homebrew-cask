cask "audiobook-builder" do
  version "2.2.9"
  sha256 "31b4f51cbbd1ac329243207dc431eff2d455033c55cd79374af5321697f012b4"

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name "Audiobook Builder"
  desc "Turn audio CDs and files into audiobooks"
  homepage "https://www.splasm.com/audiobookbuilder/"

  livecheck do
    url "https://www.splasm.com/audiobookbuilder/update.html"
    regex(/class=.*["' >]Audiobook\sBuilder\s?(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :el_capitan"

  app "Audiobook Builder.app"

  zap trash: [
    "~/Library/Application Scripts/KQZ94N9248.com.splasm.audiobookbuilder",
    "~/Library/Caches/com.splasm.audiobookbuilder#{version.major}",
    "~/Library/Group Containers/KQZ94N9248.com.splasm.audiobookbuilder",
    "~/Library/Preferences/com.splasm.audiobookbuilder#{version.major}.plist",
    "~/Library/Saved Application State/com.splasm.audiobookbuilder#{version.major}.savedState",
    "~/Library/WebKit/com.splasm.audiobookbuilder#{version.major}",
  ]
end
