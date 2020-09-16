cask "audiobookbinder" do
  version "2.1"
  sha256 "ed0e722cbbbcad8ea305faa10e1f5f08c7719991118d015af132bb9d41f84170"

  url "https://bluezbox.com/audiobookbinder/AudiobookBinder-#{version}.dmg"
  appcast "https://bluezbox.com/audiobookbinder/appcast.xml"
  name "Audiobook Binder"
  homepage "https://bluezbox.com/audiobookbinder.html"

  app "AudioBookBinder.app"
end
