cask 'omnidb' do
  version '2.16.0'
  sha256 '8f01fdfcbf79e7760f0142ccecf1e1d46df9045e28577e28144847374084ace9'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  appcast 'https://github.com/OmniDB/OmniDB/releases.atom'
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
