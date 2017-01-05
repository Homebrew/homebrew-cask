cask 'cocoasplit' do
  version '2.0.14'
  sha256 '89d0470987d67bbad69b3e8d7e23922873e2c79feec5460609e9193829b3a00d'

  url "https://www.cocoasplit.com/releases/#{version.major_minor}/CocoaSplit_#{version}.zip"
  name 'CocoaSplit'
  homepage 'https://www.cocoasplit.com/'

  app 'CocoaSplit.app'
end
