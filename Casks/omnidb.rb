cask 'omnidb' do
  version '2.6.0'
  sha256 '77bd1cd3f3c071562011fef124d64cda93800ebbc77af9a55f1dd81fcfea4b15'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
