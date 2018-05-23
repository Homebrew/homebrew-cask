cask 'omnidb' do
  version '2.8.0'
  sha256 '22f3f4676da159355590a3a66150cea3d57888122ba619e748863c6c846af82e'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
