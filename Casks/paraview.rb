cask 'paraview' do
  version '5.6.1'
  sha256 'f702a55f749e6ebf3777d465965b31e086e7c17f8d116c81d6ead81d771e2048'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-64bit.unsigned.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/listing.txt'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  app "ParaView-#{version}.app"
end
