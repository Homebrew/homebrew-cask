cask :v1 => 'gitup' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  name 'GitUp'
  homepage 'http://gitup.co'
  license :commercial

  app 'GitUp.app'
end
