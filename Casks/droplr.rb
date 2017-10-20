cask 'droplr' do
  version '4.6.9,101'
  sha256 '17b7477a3c7ee86374f59c80b0c78ce3aca2c648f9fcdb83126d389317d7d8f8'

  # files.droplr.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+#{version.after_comma}.zip"
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
