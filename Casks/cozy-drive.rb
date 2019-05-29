cask 'cozy-drive' do
  version '3.13.1'
  sha256 '247e0f03b7e0670d0d58d5b1e01a517f35a7a8e0a96ca67b4c79173136944e29'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
