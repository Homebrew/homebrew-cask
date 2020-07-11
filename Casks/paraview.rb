cask 'paraview' do
  version '5.8.0'
  sha256 '5cb92137ee86241004f5055dd6e5e9c67ebb6581771553ed1275e7050d35027c'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-Python2.7-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/listing.txt'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  depends_on macos: '>= :sierra'

  app "ParaView-#{version}.app"
end
