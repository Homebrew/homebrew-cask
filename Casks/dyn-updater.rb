cask 'dyn-updater' do
  version '5.4.7'
  sha256 '68c20b49921c1bd5db8256a6aba9b04890a9116d77fc18c6cead5a6e47ad6e15'

  url "http://cdn.dyn.com/dynupdater/DynUpdater-#{version}.zip"
  appcast 'http://cdn.dyn.com/dynupdater/appcast.xml'
  name 'Dyn Updater'
  homepage 'https://dyn.com/updater/'

  app 'Dyn Updater.app'
end
