cask 'couchpotato' do
  version '3.0.1'
  sha256 'b1db35f93727fc30e50f4d2023b7d844db5a725d16fd6072e3d10b805c2d7e28'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/RuudBurger/CouchPotatoServer/releases/download/build%2F#{version}/CouchPotato-#{version}.macosx-10_6-intel.zip"
  appcast 'https://github.com/RuudBurger/CouchPotatoServer/releases.atom',
          :sha256 => '9963099e2ae38921d80c3f3a339b80f422161d76ccdd735f1b17664076895958'
  name 'CouchPotato'
  homepage 'https://couchpota.to/'
  license :gpl

  app 'CouchPotato.app'

  zap :delete => '~/Library/Application Support/CouchPotato'
end
