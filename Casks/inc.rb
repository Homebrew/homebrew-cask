cask :v1 => 'inc' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://inc-static.kippt.com.s3.amazonaws.com/apps/inc-osx.zip'
  name 'Inc'
  homepage 'http://sendtoinc.com/apps/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Inc.app'
end
