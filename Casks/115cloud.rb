cask :v1 => '115cloud' do
  version 'v4.1.0'
  sha256 'a72c886c54a6a280869f1fb4b3e5fa851b4bc6767b53999ca9ff8e6f1be690e3'

  url "http://pc.115.com/download/mac/115com_mac_#{version}.dmg"
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
