cask :v1 => 'inc' do
  version :latest
  sha256 :no_check

  url 'http://inc-static.kippt.com.s3.amazonaws.com/apps/inc-osx.zip'
  homepage 'https://sendtoinc.com/apps/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Inc.app'
end
