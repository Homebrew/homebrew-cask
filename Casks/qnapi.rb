cask 'qnapi' do
  version '0.2.3'
  sha256 '9bb7f9ba42f6795c7e094ba6555e14955e02b5e2f5277454dc4a96b1569871d1'

  # github.com/QNapi/qnapi was verified as official when first introduced to the cask
  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg"
  appcast 'https://github.com/QNapi/qnapi/releases.atom',
          checkpoint: '0aa41961e853473ceb4559e3c9319dd660a00022e98d0053fa650b75f0b53e5b'
  name 'QNapi'
  homepage 'https://qnapi.github.io/'

  app 'QNapi.app'
end
