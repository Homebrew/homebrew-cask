cask "pref-setter" do
  version "2.0"
  sha256 :no_check

  url "http://www.nightproductions.net/downloads/prefsetter.zip"
  name "Pref Setter"
  desc "Edit plist files"
  homepage "http://www.nightproductions.net/prefsetter.html"

  livecheck do
    url "http://www.nightproductions.net/feeds/prefsetter.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: "<= :mojave"

  app "Pref Setter/Pref Setter.app"
end
