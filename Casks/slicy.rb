cask 'slicy' do
  version '1.1.8'
  sha256 'bf1546bb9ab5b52a19438111531a75fb926dbb31522f72fec82adc81ac6c76f0'

  url "http://macrabbit.com/slicy/downloads/Slicy%20#{version}.zip"
  appcast "https://update.macrabbit.com/slicy/#{version}.xml"
  name 'Slicy'
  homepage 'http://macrabbit.com/slicy/'

  app 'Slicy.app'
end
