cask :v1 => 'app-tamer' do
  version '2.0.5'
  sha256 'a8b72eeab8f90171abde1e83f2583f4140dd9ee5d4993a69a59f6d6df6ccde3f'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  name 'AppTamer'
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          :sha256 => 'bd1cff488e1a43a407cb8f9b572e827d56c922d3ef6a91a3459b055cec903f30'
  homepage 'https://www.stclairsoft.com/AppTamer/'
  license :commercial

  app 'App Tamer.app'
end
