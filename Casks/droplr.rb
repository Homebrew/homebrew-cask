cask 'droplr' do
  version '4.6.4,91'
  sha256 '41064cec1922fa76b15e940a747e3d12e720588fa3ab9a527b38ba3a683c531b'

  # files.droplr.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+#{version.after_comma}.zip"
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
