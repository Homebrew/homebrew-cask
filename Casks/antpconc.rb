cask 'antpconc' do
  version '1.2.1'
  sha256 '8b3332c3a0f71070783b6c847f203b257bff32b3d5095285c07572dc29c1b9b9'

  url "http://www.laurenceanthony.net/software/antpconc/releases/AntPConc#{version.no_dots}/AntPConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antpconc/releases/',
          checkpoint: 'ba5c12cb250387a5fa61ff38b0f4f86493e441893f427ff743e95c83cbc4c82e'
  name 'AntPConc'
  homepage 'http://www.laurenceanthony.net/software/antpconc/'

  app 'AntPConc.app'
end
