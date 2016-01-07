cask 'dupeguru-me' do
  version '6.8.1'
  sha256 '65720a2cdd17242c30ce848133a6c53e018ea0088f1990fee8d45114c921a118'

  url "https://download.hardcoded.net/dupeguru_me_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru_me.appcast',
          :sha256 => '63c7ff19e3f4f83bd4bdf75c42e9ece7b3a5a0552b7b13160f62712a67551309'
  name 'dupeGuru Music Edition'
  homepage 'https://www.hardcoded.net/dupeguru_me/'
  license :bsd

  app 'dupeGuru ME.app'
end
