cask 'ndm' do
  version '1.1.0'
  sha256 'a4da54e09c944cf288a91d999f932daa4fa8102d63974c57caadeca35a187d2c'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '7a60a7052fa5a067d43d7aa0a7d0c6e439fb658262ad4288362e1ecf6543be0f'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
