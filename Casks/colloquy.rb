cask :v1 => 'colloquy' do
  version '2.4.3'
  sha256 'b1c54047b9a4aed313e9a4a86073aa5b1215cb8a4ea462c59e7a52d8be6b1a93'

  url "http://colloquy.info/downloads/colloquy-#{version}.zip"
  appcast 'http://colloquy.info/update.php?rss',
          :sha256 => 'd1eb727b05c5146585aa249354f016cc29a0ee1a71102c4c25fcdf56bc207f92'
  homepage 'http://colloquy.info/'
  license :unknown

  app 'Colloquy.app'

  zap :delete => [
                  '~/Library/Application Support/Colloquy',
                  '~/Library/Caches/info.colloquy',
                  '~/Library/Preferences/info.colloquy.plist',
                  '~/Library/Scripts/Applications/Colloquy',
                 ]
end
