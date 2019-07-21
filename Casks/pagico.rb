cask 'pagico' do
  version '8.18.2405'
  sha256 'c21443cd5b27bf995d7054551eef3fc1ae74a4626e223434c7488d0dd576805a'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast 'https://www.pagico.com/api/pagico8.mac.xml'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
