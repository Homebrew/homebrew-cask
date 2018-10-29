cask 'omnidb' do
  version '2.12.0'
  sha256 '0402685643f8eec6092c193623ee2266fee3c80b85a485a124d88e9c79345270'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
