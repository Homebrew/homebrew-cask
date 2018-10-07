cask 'inc' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/inc-static.kippt.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/inc-static.kippt.com/apps/inc-osx.zip'
  name 'Inc'
  homepage 'https://sendtoinc.com/apps/'

  app 'Inc.app'
end
