cask :v1 => 'inc' do
  version :latest
  sha256 :no_check

  url 'http://inc-static.kippt.com.s3.amazonaws.com/apps/inc-osx.zip'
  homepage 'https://sendtoinc.com/apps/'
  license :unknown    # todo: improve this machine-generated value

  app 'Inc.app'
end
