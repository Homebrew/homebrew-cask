cask 'couchpotato' do
  version '3.0.1'
  sha256 'b1db35f93727fc30e50f4d2023b7d844db5a725d16fd6072e3d10b805c2d7e28'

  # github.com/CouchPotato/CouchPotatoServer was verified as official when first introduced to the cask
  url "https://github.com/CouchPotato/CouchPotatoServer/releases/download/build%2F#{version}/CouchPotato-#{version}.macosx-10_6-intel.zip"
  appcast 'https://github.com/CouchPotato/CouchPotatoServer/releases.atom',
          checkpoint: 'b61f00dafd9c9cbe596613d712055d2404d628121b8eaec7407f3344bf3afb4e'
  name 'CouchPotato'
  homepage 'https://couchpota.to/'
  license :gpl

  app 'CouchPotato.app'

  zap delete: '~/Library/Application Support/CouchPotato'
end
