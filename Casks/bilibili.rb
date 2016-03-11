cask 'bilibili' do
  version '2.34'
  sha256 'bafffd7e973b430a3b04265860f288e14fb9b29ece1da45f78e3dbe0b7ffed2d'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          checkpoint: '40fe32915065197ed7366469fe89aa9969eb2212b96aa0bec9fa990c1b35024b'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container nested: 'Bilibili.dmg'

  app 'Bilibili.app'
end
