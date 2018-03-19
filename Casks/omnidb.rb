cask 'omnidb' do
  version '2.6.0'
  sha256 '721160ae4e0385597f03600adc71ca741f23a506c08fb8a46b27ec717ae9ac12'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
