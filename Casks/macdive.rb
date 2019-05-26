cask 'macdive' do
  version '2.10.13'
  sha256 '3583431d3526eeca15effc51874ee37a16cda5c73b1bb6511af125402612ce9f'

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast 'https://www.mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
