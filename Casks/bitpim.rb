cask :v1 => 'bitpim' do
  version '1.0.7'
  sha256 '567d41ececc8c416746c3aa9365182797b339001d255dc4da7acc285bb289880'
  url 'http://downloads.sourceforge.net/project/bitpim/bitpim/1.0.7/LEOPARD-bitpim-1.0.7.dmg'

  name 'BitPim'
  homepage 'http://www.bitpim.org/'
  license :gpl
  app 'BitPim.app'
  depends_on :macos => '>= 10.3'

  uninstall :quit => 'org.bitpim.bitpim'

  zap :quit => 'org.bitpim.bitpim'
  zap :delete => [
    '~/Library/Preferences/org.bitpim.bitpim.plist',
    '~/Library/Preferences/LaunchpadCleaner/Local\ Store/applicattons/appicons/org.bitpim.bitpim.png',
  ]
end
