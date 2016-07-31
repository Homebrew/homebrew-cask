cask 'bitpim' do
  version '1.0.7'
  sha256 '567d41ececc8c416746c3aa9365182797b339001d255dc4da7acc285bb289880'

  # sourceforge.net/project/bitpim was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/bitpim/bitpim/#{version}/LEOPARD-bitpim-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/bitpim/rss',
          checkpoint: '5b66ec1dba689cf920501a21d932b7cee313c5b17eb840804aef2f41897b614e'
  name 'BitPim'
  homepage 'http://www.bitpim.org/'
  license :gpl

  depends_on macos: '>= :tiger'

  app 'BitPim.app'

  uninstall quit: 'org.bitpim.bitpim'

  zap delete: '~/Library/Preferences/org.bitpim.bitpim.plist'
end
