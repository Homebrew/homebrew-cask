cask 'omnidb' do
  version '2.14.0'
  sha256 '16aa91e22cf25b5a0d7f5f3ccb1069ed24c73be14d52d0900f75b01f7da39b96'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  appcast 'https://github.com/OmniDB/OmniDB/releases.atom'
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
