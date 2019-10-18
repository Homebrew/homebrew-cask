cask 'studio-3t' do
  version '2019.6.0'
  sha256 'bd75fa718bb76db0d1b44e3ea2f39bcd8e1fd8f6d97e4ff069ced71bfb3e36c9'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
