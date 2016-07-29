cask 'app-tamer' do
  version '2.1'
  sha256 'a8786527526f3b9e21975f70d93c0538b017b60667a29c15291ae62df2d74168'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          checkpoint: '50a6d8c14040f6f228963e699f4c2d6292d25f011603ee2d0ca0949d0fd74e73'
  name 'AppTamer'
  homepage 'https://www.stclairsoft.com/AppTamer/'
  license :commercial

  app 'App Tamer.app'
end
