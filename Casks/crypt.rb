cask :v1 => 'crypt' do
  version '3'
  sha256 'e9e82ad331fe26a26ddb9625a9e1ac8e65086770c1abf4bfa503c8336bdf37bd'

  url "http://voluntary.net.s3.amazonaws.com/Crypt#{version}_20100429.zip"
  homepage 'http://voluntary.net/crypt/'
  license :unknown    # todo: improve this machine-generated value

  app "Crypt#{version}.app"
end
