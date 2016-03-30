cask 'brave' do
  version '0.8.2dev'
  sha256 '1925f62eb415da72abe2ccfe3a30f55adf5ce2d165894bf6d7027145042b923f'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '2057df89e9f7b47c45ce42f55f2c4fe962c38e6bef39d94f1289ccf08516d22a'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
