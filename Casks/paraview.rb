cask 'paraview' do
  version '5.6.1'
  sha256 '749295130032b9e7e1fa0d281934c942d790124bbd4cdaf46aa49baa0a33627f'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-64bit.unsigned.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/listing.txt'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  app "ParaView-#{version}.app"
end
