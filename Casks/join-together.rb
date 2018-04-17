cask 'join-together' do
  version '7.8.0'
  sha256 '707624eba0ef871de19bcad9bc2f4db256f3b82b90fce5b2eb6e6b4bfd78032f'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: 'c2b895353bbe21a867ab1c5dc7b80a670019e8eeb5724b70d3da2dc762e90d54'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end
