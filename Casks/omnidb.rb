cask 'omnidb' do
  version '2.4.1'
  sha256 '7ea30fae1cc0e6ad2101dda71e63916819ad0876fbff0786c8b2b42e74cdf140'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
