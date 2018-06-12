cask 'join-together' do
  version '7.8.0'
  sha256 '707624eba0ef871de19bcad9bc2f4db256f3b82b90fce5b2eb6e6b4bfd78032f'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end
