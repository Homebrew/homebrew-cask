cask 'ammonite' do
  version '1.15'
  sha256 'c44094f04b2f678f31e5b2c8f59d501f55abe6469acac9652a74e2c1d042f683'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          checkpoint: 'ad839c48357f08fad2e87ffd3d6504ac1a9b0add8da83098deaf5ecc7f88837e'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
