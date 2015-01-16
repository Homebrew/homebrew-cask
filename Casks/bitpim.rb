cask :v1 => 'bitpim' do
  version '1.0.7'
  sha256 '567d41ececc8c416746c3aa9365182797b339001d255dc4da7acc285bb289880'

  depends_on :macos => '>= :tiger' #BitPim actually runs in 10.3, but homebrew-cask doesn't go back that far.

  name 'BitPim'
  license :gpl
  homepage 'http://www.bitpim.org/'
  url 'http://downloads.sourceforge.net/project/bitpim/bitpim/#{version}/LEOPARD-bitpim-1.0.7.dmg'

  app 'BitPim.app'

  uninstall :quit => 'org.bitpim.bitpim'
  zap :delete => '~/Library/Preferences/org.bitpim.bitpim.plist'
end
