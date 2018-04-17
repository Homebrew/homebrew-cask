cask 'emailchemy' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/wksdownload was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/wksdownload/Emailchemy-Mac.dmg'
  name 'Emailchemy'
  homepage 'http://weirdkid.com/emailchemy/'

  app 'Emailchemy.app'
end
