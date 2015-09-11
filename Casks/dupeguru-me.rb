cask :v1 => 'dupeguru-me' do
  version '6.8.1'
  sha256 '65720a2cdd17242c30ce848133a6c53e018ea0088f1990fee8d45114c921a118'

  url "http://download.hardcoded.net/dupeguru_me_osx_#{version.gsub('.', '_')}.dmg"
  name 'dupeGuru Music Edition'
  appcast 'http://www.hardcoded.net/updates/dupeguru_me.appcast',
          :sha256 => '06048bd2a5358e315d2e53c7110d593d2e6d1565fb742e53f2c7ac3cb07a8cc3'
  homepage 'http://www.hardcoded.net/dupeguru_me/'
  license :bsd

  app 'dupeGuru ME.app'
end
