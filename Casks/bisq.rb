cask 'bisq' do
  version '0.9.3'
  sha256 'cfe6f0d346d9f4639d8d9eaa3e60374deeb0df3804f578d227e6e05f474d8dda'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.io/'

  app 'Bisq.app'
end
