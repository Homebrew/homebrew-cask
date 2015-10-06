cask :v1 => 'dupeguru-me' do
  version '6.8.1'
  sha256 '65720a2cdd17242c30ce848133a6c53e018ea0088f1990fee8d45114c921a118'

  url "http://download.hardcoded.net/dupeguru_me_osx_#{version.gsub('.', '_')}.dmg"
  name 'dupeGuru Music Edition'
  appcast 'http://www.hardcoded.net/updates/dupeguru_me.appcast',
          :sha256 => 'd8e0b5cbee7af0967a57bd1fc2a022ea8a49654a275e740195cc558624ffec1a'
  homepage 'http://www.hardcoded.net/dupeguru_me/'
  license :bsd

  app 'dupeGuru ME.app'
end
