cask 'omnidb' do
  version '2.15.0'
  sha256 '0f98f6d1322ab528cbd41678b0f6a0e30540e846e0e434a963acefff273a1881'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  appcast 'https://github.com/OmniDB/OmniDB/releases.atom'
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
