cask :v1 => 'app-tamer' do
  version '2.0.5'
  sha256 'a8b72eeab8f90171abde1e83f2583f4140dd9ee5d4993a69a59f6d6df6ccde3f'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  name 'AppTamer'
  homepage 'http://www.stclairsoft.com/AppTamer/'
  license :commercial

  app 'App Tamer.app'
end
