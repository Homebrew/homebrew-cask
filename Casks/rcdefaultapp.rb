cask 'rcdefaultapp' do
  version '2.1'
  sha256 'eb940bf74628f94ac3bfe39e360cb8fb8bbbc9a3c314d2214d5f1476b5d8b6a4'

  url "http://www.rubicode.com/Downloads/RCDefaultApp-#{version}.X.dmg"
  name 'RCDefaultApp'
  homepage 'http://www.rubicode.com/Software/RCDefaultApp/'
  license :gratis

  prefpane 'RCDefaultApp.prefPane'
end
