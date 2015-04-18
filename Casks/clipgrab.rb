cask :v1 => 'clipgrab' do
  version '3.4.10'
  sha256 '36f241edd2b0894782e8ef3229779fa565078832c5cb29646ca219d51c2e0889'

  url "http://download.clipgrab.de/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'http://clipgrab.org'
  license :gratis

  app 'ClipGrab.app'

  zap :delete => '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
