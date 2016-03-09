cask 'qnapi' do
  version '0.2.1'
  sha256 '4189c0335b8e017a6086940bab0c4b1f8ceb03936b5bf0e0cb96b3bedd2e9854'

  # github.com/QNapi/qnapi was verified as official when first introduced to the cask
  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg"
  appcast 'https://github.com/QNapi/qnapi/releases.atom',
          checkpoint: 'a1e48985ce0947d205899e896a1659ce1f4e4ba55d21b5ce59f37bb09bfe9d35'
  name 'QNapi'
  homepage 'https://qnapi.github.io/'
  license :gpl

  app 'QNapi.app'
end
