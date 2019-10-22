cask 'paraview' do
  version '5.7.0'
  sha256 '7d81ea4a26ba7cd9528bac748cabbbb5511858981ed33dee79f2d82a32194dca'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-Python2.7-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/listing.txt'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  depends_on macos: '>= :sierra'

  app "ParaView-#{version}.app"
end
