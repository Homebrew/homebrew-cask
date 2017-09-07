cask 'couchpotato' do
  version '3.0.1'
  sha256 'b1db35f93727fc30e50f4d2023b7d844db5a725d16fd6072e3d10b805c2d7e28'

  # github.com/CouchPotato/CouchPotatoServer was verified as official when first introduced to the cask
  url "https://github.com/CouchPotato/CouchPotatoServer/releases/download/build%2F#{version}/CouchPotato-#{version}.macosx-10_6-intel.zip"
  appcast 'https://github.com/CouchPotato/CouchPotatoServer/releases.atom',
          checkpoint: 'c86a3db5923c3cdb0d581e39706895abdd0b3a5a24daa7b7be448a5130bad0fd'
  name 'CouchPotato'
  homepage 'https://couchpota.to/'

  app 'CouchPotato.app'

  zap trash: '~/Library/Application Support/CouchPotato'
end
