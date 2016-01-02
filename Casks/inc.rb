cask 'inc' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://inc-static.kippt.com.s3.amazonaws.com/apps/inc-osx.zip'
  name 'Inc'
  homepage 'https://sendtoinc.com/apps/'
  license :gratis

  app 'Inc.app'
end
