cask 'sourcetrail' do
  version '2019.4.102'
  sha256 '4d98f578b8452ddf39f37eb7ca588802ba65c27aff5f4fd06709403c7f845766'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://github.com/CoatiSoftware/Sourcetrail/releases.atom'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
