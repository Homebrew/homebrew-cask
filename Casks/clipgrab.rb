cask :v1 => 'clipgrab' do
  version '3.5.1'
  sha256 '6fcb973702798973acf1ae1fea60ece2b34f4926a7c8ff1f2cc71bbe2b990dff'

  url "http://download.clipgrab.de/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'http://clipgrab.org'
  license :gratis

  app 'ClipGrab.app'

  zap :delete => '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
