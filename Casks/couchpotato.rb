cask 'couchpotato' do
  version '3.0.1'
  sha256 'b1db35f93727fc30e50f4d2023b7d844db5a725d16fd6072e3d10b805c2d7e28'

  # github.com/CouchPotato/CouchPotatoServer was verified as official when first introduced to the cask
  url "https://github.com/CouchPotato/CouchPotatoServer/releases/download/build%2F#{version}/CouchPotato-#{version}.macosx-10_6-intel.zip"
  appcast 'https://github.com/CouchPotato/CouchPotatoServer/releases.atom',
          checkpoint: '5ac2077dbad662df75bb50b160040d6d87862e171e32717bf9ef2b23ddb8089e'
  name 'CouchPotato'
  homepage 'https://couchpota.to/'

  app 'CouchPotato.app'

  zap delete: '~/Library/Application Support/CouchPotato'
end
