cask 'macupdater' do
  version '1.2.10'
  sha256 'c7a0049e5fb6b4baa86c2fc8381ea6b9af746542382692f335885d52a5a3fd99'

  url "https://www.corecode.io/downloads/macupdater_#{version}.zip"
  appcast 'https://www.corecode.io/macupdater/macupdater.xml'
  name 'MacUpdater'
  homepage 'https://www.corecode.io/macupdater/index.html'

  app 'MacUpdater.app'
end
