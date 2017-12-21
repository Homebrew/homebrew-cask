cask 'omnidb' do
  version '2.4.0'
  sha256 '75cd788e229d8a74ab71b498ac530910574b2bd955975023ccab882675a00c8c'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
