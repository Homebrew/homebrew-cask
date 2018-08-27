cask 'spotmenu' do
  version '1.8'
  sha256 '06394ef8e6bc791fa2b3426dd9f58a7ac59af00b2cb0b50075c025f3bc1b58b0'

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.zip"
  appcast 'https://github.com/kmikiy/SpotMenu/releases.atom'
  name 'SpotMenu'
  homepage 'https://github.com/kmikiy/SpotMenu'

  app 'SpotMenu.app'
end
