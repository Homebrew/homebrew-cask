cask 'bovada-poker' do
  version :latest
  sha256 :no_check

  # imagestore.lv was verified as official when first introduced to the cask
  url 'https://cdn3-c.imagestore.lv/static/poker-client-installer-delta/installer/BovadaPoker.pkg'
  name 'Bovada Poker'
  homepage 'https://poker.bovada.lv'

  auto_updates true

  pkg 'BovadaPoker.pkg'

  uninstall pkgutil: '2110',
            quit:    'com.BovadaPoker.Lobby'

  zap delete: '~/Library/Application Support/Bovada'
end
