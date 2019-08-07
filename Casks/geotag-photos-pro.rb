cask 'geotag-photos-pro' do
  version '1.2.0'
  sha256 '104fbb2fc9d9e52304684f3efde3de8b376535116fd97e825fd221cf8fba2cab'

  # github.com/tappytaps was verified as official when first introduced to the cask
  url "https://github.com/tappytaps/geotag-desktop-app/releases/download/v#{version}/geotag-#{version}-mac.zip"
  appcast 'https://github.com/tappytaps/geotag-desktop-app/releases.atom'
  name 'Geotag Photos Pro'
  homepage 'https://www.geotagphotos.net/'

  app 'Geotag Photos Pro 2.app'
end
