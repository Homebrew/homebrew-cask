cask 'omnidb' do
  version '2.9.0'
  sha256 '87b706cb82a48287a5ad138b4f4da728bbfc977b827d173bd26a9a83add4ca70'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
