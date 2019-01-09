cask 'antpconc' do
  version '1.2.1'
  sha256 '8b3332c3a0f71070783b6c847f203b257bff32b3d5095285c07572dc29c1b9b9'

  url "https://www.laurenceanthony.net/software/antpconc/releases/AntPConc#{version.no_dots}/AntPConc.zip"
  appcast 'https://www.laurenceanthony.net/software/antpconc/releases/'
  name 'AntPConc'
  homepage 'https://www.laurenceanthony.net/software/antpconc/'

  app 'AntPConc.app'
end
