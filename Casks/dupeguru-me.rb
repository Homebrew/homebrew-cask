cask :v1 => 'dupeguru-me' do
  version '6.8.1'
  sha256 '65720a2cdd17242c30ce848133a6c53e018ea0088f1990fee8d45114c921a118'

  url "http://download.hardcoded.net/dupeguru_me_osx_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.hardcoded.net/dupeguru_me/'
  license :bsd

  app 'dupeGuru ME.app'
end
