cask :v1 => 'cakebrew' do
  version '1.0.9'
  sha256 'e60ad4e04ff74483b41c28585350d0b9935f3143fbb4b34eb3d72869da9c0e9b'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'http://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => '71b9cf1256459d4565b4efe6bd505a56dd29a50d51e3fed2ed6c20c4ad88dd75'
  homepage 'http://www.cakebrew.com'
  license :gpl

  app 'Cakebrew.app'
end
