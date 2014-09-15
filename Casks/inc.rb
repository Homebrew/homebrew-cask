class Inc < Cask
  version 'latest'
  sha256 :no_check

  url 'http://inc-static.kippt.com.s3.amazonaws.com/apps/inc-osx.zip'
  homepage 'https://sendtoinc.com/apps/'

  app 'Inc.app'
end
