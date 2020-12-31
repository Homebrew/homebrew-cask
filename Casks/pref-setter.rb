cask "pref-setter" do
  version "2.0,197"
  sha256 :no_check

  url "http://www.nightproductions.net/downloads/prefsetter.zip"
  name "Pref Setter"
  homepage "http://www.nightproductions.net/prefsetter.html"

  livecheck do
    url "http://www.nightproductions.net/feeds/prefsetter.xml"
    strategy :sparkle
  end

  depends_on macos: "<= :mojave"

  app "Pref Setter/Pref Setter.app"
end
