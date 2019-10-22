cask 'omnidb' do
  version '2.16.0'
  sha256 '4b5a861162564d2d4c0fbd656d9f372897d83dd61c0bfaa4842da22b4af744f3'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  appcast 'https://github.com/OmniDB/OmniDB/releases.atom'
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
