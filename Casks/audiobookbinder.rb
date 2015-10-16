cask :v1 => 'audiobookbinder' do
  version '2.1'
  sha256 'ed0e722cbbbcad8ea305faa10e1f5f08c7719991118d015af132bb9d41f84170'

  url "http://bluezbox.com/audiobookbinder/AudiobookBinder-#{version}.dmg"
  name 'Audiobook Binder'
  name 'AudiobookBinder'
  appcast 'http://bluezbox.com/audiobookbinder/appcast.xml',
          :sha256 => '11938c904098f5a6dd0dbf6a607cdde44be5d7f1a0d7fdeb5e54965320c0f441'
  homepage 'http://bluezbox.com/audiobookbinder.html'
  license :oss

  app 'AudioBookBinder.app'
end
