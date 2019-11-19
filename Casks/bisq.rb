cask 'bisq' do
  version '1.2.3'
  sha256 '62ee0dca0319f7cfd9b13c7d8e59a9a0485a33ff0d0654c95fdd999cef4681e4'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
