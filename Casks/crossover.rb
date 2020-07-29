cask 'crossover' do
  version '19.0.2'
  sha256 '7f6ed1183ebc5536f3fd0e52b76368265140e36936c62e2c525d8044f36961ee'

  url "https://media.codeweavers.com/pub/crossover/cxmac/demo/crossover-#{version}.zip"
  appcast 'https://www.codeweavers.com/xml/versions/cxmac.xml'
  name 'CrossOver'
  homepage 'https://www.codeweavers.com/products/crossover-mac/'

  app 'CrossOver.app'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/CrossOver Help*',
               '~/Library/Caches/Cleanup At Startup/CrossOver CD Helper.app',
               '~/Library/Caches/com.codeweavers.CrossOver',
               '~/Library/Saved Application State/com.codeweavers.CrossOverHelper*',
               '~/Library/Logs/CrossOver',
               '~/Library/Preferences/com.codeweavers.*',
               '~/Library/Application Support/CrossOver',
             ]
end
