cask "audiobookbinder" do
  version "2.1,201"
  sha256 "ed0e722cbbbcad8ea305faa10e1f5f08c7719991118d015af132bb9d41f84170"

  url "https://bluezbox.com/audiobookbinder/AudiobookBinder-#{version.before_comma}.dmg"
  name "Audiobook Binder"
  homepage "https://bluezbox.com/audiobookbinder.html"

  livecheck do
    url "https://bluezbox.com/audiobookbinder/appcast.xml"
    strategy :sparkle
  end

  app "AudioBookBinder.app"
end
