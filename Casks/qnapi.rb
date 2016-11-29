cask 'qnapi' do
  version '0.2.2'
  sha256 'eff53b9c04b23e9c3d1af26a0a384973ca314cd1e1e234a8bdad149d12ddb159'

  # github.com/QNapi/qnapi was verified as official when first introduced to the cask
  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg"
  appcast 'https://github.com/QNapi/qnapi/releases.atom',
          checkpoint: '86052e8130b91851277757d87bac1383316c13290b4b4e3171cd08d5337803dc'
  name 'QNapi'
  homepage 'https://qnapi.github.io/'

  app 'QNapi.app'
end
