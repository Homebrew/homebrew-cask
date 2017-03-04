cask 'inc' do
  version :latest
  sha256 :no_check

  # inc-static.kippt.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'http://inc-static.kippt.com.s3.amazonaws.com/apps/inc-osx.zip'
  name 'Inc'
  homepage 'https://sendtoinc.com/apps/'

  app 'Inc.app'
end
