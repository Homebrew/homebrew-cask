cask 'lightmod' do
  version '1.1.7'
  sha256 '75a5cf1b260830954b1850aa0b33dfa4b617d0de1f9e6d1820d847b6ff909a75'

  # github.com/oakes/Lightmod was verified as official when first introduced to the cask
  url "https://github.com/oakes/Lightmod/releases/download/#{version}/Lightmod-#{version}.dmg"
  appcast 'https://github.com/oakes/Lightmod/releases.atom',
          checkpoint: '037908e6baa756c04c3a49f1da3118e6739ee08e9c50fb3ef8935f1beb74c649'
  name 'Lightmod'
  homepage 'https://sekao.net/lightmod/'

  app 'Lightmod.app'
end
