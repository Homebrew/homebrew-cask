class Cakebrew < Cask
  version '1.0.9'
  sha256 'e60ad4e04ff74483b41c28585350d0b9935f3143fbb4b34eb3d72869da9c0e9b'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'http://www.cakebrew.com/appcast/profileInfo.php'
  homepage 'http://www.cakebrew.com'
  license :unknown

  app 'Cakebrew.app'
end
