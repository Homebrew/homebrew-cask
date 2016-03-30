cask 'camerabag' do
  version '2.7.01'
  sha256 'e120208a17692ebcc5ad7c7c3fc27125fe9870530174b2872a2a3b3fdaff6163'

  # downloads.nevercenter.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://downloads.nevercenter.com.s3.amazonaws.com/CameraBag_Mac_#{version.gsub('.', '_')}.dmg"
  name 'CameraBag'
  homepage 'https://nevercenter.com/camerabag/desktop/'
  license :commercial

  app 'CameraBag 2.app'
end
