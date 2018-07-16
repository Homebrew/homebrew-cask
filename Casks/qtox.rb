cask 'qtox' do
  version '1.16.2'
  sha256 '9c511a969877a06e5373e5dae1013dcc80062d73851a8aa94c2576e67a6acd84'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
