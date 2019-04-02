cask 'bisq' do
  version '0.9.7'
  sha256 '2c1b81507bfd647b8355df20ecfdf130d6d45407990cdabb4750c9e4512d7e03'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.io/'

  app 'Bisq.app'
end
