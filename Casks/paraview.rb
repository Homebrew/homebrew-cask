cask 'paraview' do
  version '5.8.0'
  sha256 '36e84be8d389806f17fbc5a30b26bc242566bc919ba94dffb07d05cb6fbdbdb5'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-Python2.7-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/listing.txt'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  depends_on macos: '>= :sierra'

  app "ParaView-#{version}.app"
end
