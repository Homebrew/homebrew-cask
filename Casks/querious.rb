cask 'querious' do
  version '2.0_rc2'
  sha256 '0bed4bc527e7eaa052c6d09575e318503cc584e058d7695b07f5062b19ad4372'

  # arweb-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://arweb-assets.s3.amazonaws.com/downloads/querious/Querious.dmg'
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: '1ae7367d6585550ad346bd9242e762dcb7ead553316671c80005398c4db16138'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  app 'Querious.app'
end
