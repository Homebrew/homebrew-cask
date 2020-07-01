cask 'ring' do
  version '2.6.1'
  sha256 '928db7da13a925024ad71c3e88e9237fc040100bb893ae62fa84b6f8f7636ac9'

  # ring-mac-app-assets.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
