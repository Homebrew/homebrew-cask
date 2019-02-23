cask 'bisq' do
  version '0.9.4'
  sha256 '42d9c777464f40538f88d5efe4ffcf915126f4b1cd308772491c731be4b146b6'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.io/'

  app 'Bisq.app'
end
