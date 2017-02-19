cask 'ndm' do
  version '1.1.0'
  sha256 'a4da54e09c944cf288a91d999f932daa4fa8102d63974c57caadeca35a187d2c'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '31e8ea2c8c1748af0a3060313acf6319e313fc88ff5652d55de68c12910f67a9'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
