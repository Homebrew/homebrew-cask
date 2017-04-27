cask 'camerabag-photo' do
  version '3.0.1c'
  sha256 '5ea0312ecc6246b95f28e9848548432d328808c892cff9fd4f09aba2798fd8ea'

  # downloads.nevercenter.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://downloads.nevercenter.com.s3.amazonaws.com/CameraBag_Photo_Mac_#{version.dots_to_underscores}.dmg"
  name 'CameraBag'
  homepage 'https://nevercenter.com/camerabag/photo/'

  app 'CameraBag Photo.app'
end
