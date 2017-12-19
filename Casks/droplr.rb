cask 'droplr' do
  version '4.7.1,104'
  sha256 '58ce39d1f786f8430040e0cfe166d62c311f7724cbe965fc9f44e3f2a2f13284'

  # files.droplr.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+#{version.after_comma}.zip"
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
