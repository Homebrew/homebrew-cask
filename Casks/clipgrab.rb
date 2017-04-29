cask 'clipgrab' do
  version '3.6.4'
  sha256 '922a4df506de530b436ee542e21c5ad035227b6a5d05e624101ce1280035083f'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap delete: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
