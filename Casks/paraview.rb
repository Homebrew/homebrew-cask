cask 'paraview' do
  version '5.5.2'
  sha256 '9fd955ae64b064d1f6f152a6ba3ab789dfb6950e4de1e16f869cae9fd96b6caf'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v5.5&type=binary&os=macOS&downloadFile=ParaView-#{version}-Qt5-MPI-OSX10.8-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/paraview-download.js'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  app "ParaView-#{version}.app"
end
