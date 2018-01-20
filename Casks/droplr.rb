cask 'droplr' do
  version '5.0.0,206'
  sha256 '4362d360173a1bec7501055883a3edbf4253eea790059087d9174774284d52f4'

  # files.droplr.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+#{version.after_comma}.zip"
  name 'Droplr'
  homepage 'https://droplr.com/'

  auto_updates true

  app 'Droplr.app'

  uninstall login_item: 'Droplr'
end
