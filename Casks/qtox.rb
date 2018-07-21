cask 'qtox' do
  version '1.16.3'
  sha256 'c11fb1063b4985a42d19f07ee8704b30b287a2a88a37752c102bf8a91a81f209'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
