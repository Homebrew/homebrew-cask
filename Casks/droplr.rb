cask 'droplr' do
  version '4.6.5,94'
  sha256 '8236d94a9ffd900fa35815c80fb1071c0f62211adb3a8840211115f01bea262e'

  # files.droplr.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+#{version.after_comma}.zip"
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
