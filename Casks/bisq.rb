cask 'bisq' do
  version '1.2.5'
  sha256 'de0d7fd5471b30e6f2428776bac5874e560507a10cf93369199bd0c232d7e8ce'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
