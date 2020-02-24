cask 'qgis' do
  version '3.10.2'
  sha256 '6a829ba34ef2fa6a422ddb219544a3f7f5bee3428e24e5f03e6de37ca1c910bf'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://www.qgis.org/'
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
