cask 'app-tamer' do
  version '2.1'
  sha256 'a8786527526f3b9e21975f70d93c0538b017b60667a29c15291ae62df2d74168'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          :sha256 => '95782992b55a61ce16f727eef093e02a10aa97527a3af04d20ae1249f2cf07ad'
  name 'AppTamer'
  homepage 'https://www.stclairsoft.com/AppTamer/'
  license :commercial

  app 'App Tamer.app'
end
