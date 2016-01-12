cask 'air-connect' do
  version '2.0.1'
  sha256 'e8f93fbcb626241f9cbe0f934cf9dada319f3f80399ec83558aa696988575b2a'

  url "https://www.avatron.com/updates/software/airconnect_mac/acmac#{version.delete('.')}.zip"
  appcast 'https://avatron.com/updates/software/airconnect_mac/appcast.xml',
          :sha256 => 'a7590adc2917c5206de2b6d94aff3c78da38be43e8273900111a6904b973a8bb'
  name 'Air Connect'
  homepage 'https://avatron.com/get-air-connect/'
  license :gratis

  app 'Air Connect.app'
end
