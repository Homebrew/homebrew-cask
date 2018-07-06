cask 'qtox' do
  version '1.16.1'
  sha256 '0b797d3cf42b72c5789efd2e9d9d1b9e4fe5e6743cb8480fb7731ac83471bf45'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
