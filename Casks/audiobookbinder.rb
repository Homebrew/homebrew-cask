cask 'audiobookbinder' do
  version '2.1'
  sha256 'ed0e722cbbbcad8ea305faa10e1f5f08c7719991118d015af132bb9d41f84170'

  url "http://bluezbox.com/audiobookbinder/AudiobookBinder-#{version}.dmg"
  appcast 'http://bluezbox.com/audiobookbinder/appcast.xml',
          :sha256 => '1ee1709229e5f52fcc4d07c76f60a7aab113b73791da65ca270b3f343467f4c9'
  name 'Audiobook Binder'
  homepage 'http://bluezbox.com/audiobookbinder.html'
  license :oss

  app 'AudioBookBinder.app'
end
