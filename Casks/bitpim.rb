cask 'bitpim' do
  version '1.0.7'
  sha256 '567d41ececc8c416746c3aa9365182797b339001d255dc4da7acc285bb289880'

  url "http://downloads.sourceforge.net/project/bitpim/bitpim/#{version}/LEOPARD-bitpim-#{version}.dmg"
  name 'BitPim'
  homepage 'http://www.bitpim.org/'
  license :gpl

  depends_on macos: '>= :tiger'

  app 'BitPim.app'

  uninstall quit: 'org.bitpim.bitpim'

  zap delete: '~/Library/Preferences/org.bitpim.bitpim.plist'
end
