cask 'cozy-drive' do
  version '3.8.1'
  sha256 'a3243c970d48bbceed55f2c3b207129ee21bc4c47d89b93061b7afdf616c863a'

  # nuts.cozycloud.cc was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  name 'Cozy Drive'
  homepage 'https://cozy.io/'

  app 'Cozy Drive.app'
end
