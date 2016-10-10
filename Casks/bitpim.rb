cask 'bitpim' do
  version '1.0.7'
  sha256 '567d41ececc8c416746c3aa9365182797b339001d255dc4da7acc285bb289880'

  # sourceforge.net/bitpim was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bitpim/bitpim/#{version}/LEOPARD-bitpim-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/bitpim/rss?path=/bitpim',
          checkpoint: '66382187ace01bc30d808ef6b6654ed241d3bb90c21021dbf48c11cea5ea1b89'
  name 'BitPim'
  homepage 'http://www.bitpim.org/'

  depends_on macos: '>= :tiger'

  app 'BitPim.app'

  uninstall quit: 'org.bitpim.bitpim'

  zap delete: '~/Library/Preferences/org.bitpim.bitpim.plist'
end
