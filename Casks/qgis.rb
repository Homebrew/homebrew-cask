cask 'qgis' do
  version '3.12.0'
  sha256 '9eba4fbf92aa7bd5fa9364a1eaf8325ab1db6ec0834acabe9539e830c41167ff'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://www.qgis.org/'
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
