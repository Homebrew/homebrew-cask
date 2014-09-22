class DupeguruMe < Cask
  version '6.8.0'
  sha256 '1c589d7113e580f7a9475d061ef17c63b8156632058ff6a37f01780e3bc4b4bf'

  url "http://download.hardcoded.net/dupeguru_me_osx_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.hardcoded.net/dupeguru_me/'

  app 'dupeGuru ME.app'
end
