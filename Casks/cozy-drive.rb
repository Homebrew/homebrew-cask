cask 'cozy-drive' do
  version '3.10.3'
  sha256 '1f13e3d2e94c72b4332db4da760fdb8a168e4176e97d0dc496a8d78a818c34fd'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
