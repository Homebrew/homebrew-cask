cask 'openbazaar2' do
  version '2.0.11'
  sha256 'dabe8ec8d248875f5be8a3188faa53e0974b5a59888b3b5c4bab5dfedd036297'

  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar2-#{version}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: '148327cc61bb5400b30367d3357f0dc457fe0d818f3aed62bbd494cbb7b3210d'
  name 'OpenBazaar 2'
  homepage 'https://www.openbazaar.org/'

  app 'OpenBazaar2.app'
end
