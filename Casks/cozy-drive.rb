cask 'cozy-drive' do
  version '3.11.1'
  sha256 'bf1262a67af3e0aee9de492dc3000181995a333554d98bfc22d4bc7e33cd0ba0'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
