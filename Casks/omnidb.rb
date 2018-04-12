cask 'omnidb' do
  version '2.7.0'
  sha256 '9ff9fe9cae62bf027434a05bc9c3eb72620e38b5fc1b85f81713f9066e855cc6'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
