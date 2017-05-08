cask 'qnapi' do
  version '0.2.2'
  sha256 'eff53b9c04b23e9c3d1af26a0a384973ca314cd1e1e234a8bdad149d12ddb159'

  # github.com/QNapi/qnapi was verified as official when first introduced to the cask
  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg"
  appcast 'https://github.com/QNapi/qnapi/releases.atom',
          checkpoint: '7f86d17cfff871b1a1bb1b1071b25bc49ecdfb05e7534068614f2d49911b2448'
  name 'QNapi'
  homepage 'https://qnapi.github.io/'

  app 'QNapi.app'
end
