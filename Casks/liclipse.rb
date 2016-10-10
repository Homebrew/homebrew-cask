cask 'liclipse' do
  version '3.0.6'
  sha256 'e5bf65644729267e436ee876cededabd79fedcdadfe43930ea45e72b359c31cf'

  # googledrive.com/host/0BwwQN8QrgsRpLVlDeHRNemw3S1E was verified as official when first introduced to the cask
  url "https://googledrive.com/host/0BwwQN8QrgsRpLVlDeHRNemw3S1E/LiClipse%20#{version}/liclipse_#{version}_macosx.cocoa.x86_64.dmg"
  name 'LiClipse'
  homepage 'http://www.liclipse.com/'

  app 'LiClipse.app'
end
