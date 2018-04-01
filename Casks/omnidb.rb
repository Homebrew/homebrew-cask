cask 'omnidb' do
  version '2.5.0'
  sha256 '61467b79b746ad682098c55525321f03de2218c64deb177abea45943f7567ed3'

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  name 'OmniDB'
  homepage 'https://omnidb.org/'

  app 'OmniDB.app'
end
