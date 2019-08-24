cask 'paraview' do
  version '5.6.2'
  sha256 '52cb3d6e14c410fdb84d76edcf874c49013568025e66df2c35ba5819652d4ada'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-64bit.unsigned.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/listing.txt'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  depends_on macos: '>= :sierra'

  app "ParaView-#{version}.app"
end
