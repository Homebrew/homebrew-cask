cask 'paraview' do
  version '5.6.0'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.8-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/paraview-download.js'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  app "ParaView-#{version}.app"
end
