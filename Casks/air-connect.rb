cask 'air-connect' do
  version '2.0.1'
  sha256 'e8f93fbcb626241f9cbe0f934cf9dada319f3f80399ec83558aa696988575b2a'

  url "https://www.avatron.com/updates/software/airconnect_mac/acmac#{version.delete('.')}.zip"
  appcast 'https://avatron.com/updates/software/airconnect_mac/appcast.xml',
          checkpoint: 'f18a637310e9e6d0bf36d562297d55030f0ae8cc6caea1bffcbde1eda82d8e0e'
  name 'Air Connect'
  homepage 'https://avatron.com/get-air-connect/'
  license :gratis

  app 'Air Connect.app'
end
