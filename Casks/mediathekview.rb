cask 'mediathekview' do
  version '13.5.1'
  sha256 '745a965c74bbd449535bdd87e8473d0c0912a0e20abe298f2f174687786f075a'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-mac.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml'
  name 'MediathekView'
  homepage 'https://mediathekview.de/'

  suite 'MediathekView'
end
