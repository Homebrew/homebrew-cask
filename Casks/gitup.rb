cask :v1 => 'gitup' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  name 'GitUp'
  homepage 'http://gitup.co'
  license :gpl

  depends_on :macos => '>= :mountain_lion'

  app 'GitUp.app'
  binary 'GitUp.app/Contents/SharedSupport/gitup'
end
