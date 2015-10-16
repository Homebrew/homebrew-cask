cask :v1 => 'app-tamer' do
  version '2.1'
  sha256 'a8786527526f3b9e21975f70d93c0538b017b60667a29c15291ae62df2d74168'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  name 'AppTamer'
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          :sha256 => 'c60e74c3da756c958bc961ad711759d7904473e75d26e0df410e2e83c34268ae'
  homepage 'https://www.stclairsoft.com/AppTamer/'
  license :commercial

  app 'App Tamer.app'
end
