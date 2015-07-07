cask :v1 => '115cloud' do
  version '5.1.1.31.20150614'
  sha256 'b87cc832bb11a90a087273be093f923e8f219f6a8b50fe890d031fdb912f7ba0'

  url "http://down.115.com/client/mac/115Browser_v#{version}.dmg"
  name '115网盘'
  name '115 cloud'
  homepage 'http://pc.115.com/mac.html'
  license :gratis

  app '115网盘.app', :target => '115 cloud.app'

  uninstall :quit => '115comonlinestorage-15--'

  zap :delete => [
                  '~/Library/Preferences/115comonlinestorage-15--.plist',
                  '~/Library/Caches/115comonlinestorage-15--',
                  '~/Library/Application Support/115网盘'
                 ]
end
