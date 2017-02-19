cask 'ndm' do
  version '1.1.0'
  sha256 'a4da54e09c944cf288a91d999f932daa4fa8102d63974c57caadeca35a187d2c'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: 'bc369e17fd3e6ef4421adfd4b86670c474f57ba37f1f9775427ac9b944fc6c46'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
