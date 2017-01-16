cask 'camerabag-photo' do
  version '3.0.1'
  sha256 '5fd4bad30ae1d84d179c0b10a38ea9df3f89d7c450e1c8f912da2f8f37949c9d'

  # downloads.nevercenter.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://downloads.nevercenter.com.s3.amazonaws.com/CameraBag_Photo_Mac_#{version.dots_to_underscores}.dmg"
  name 'CameraBag'
  homepage 'https://nevercenter.com/camerabag/photo/'

  app 'CameraBag Photo.app'
end
