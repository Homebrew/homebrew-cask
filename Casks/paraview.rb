cask 'paraview' do
  version '5.6.0'
  sha256 '95f1d0eaa36452e2faae2f9d6077c933bfb78a31fca86eff1d80471aea471db7'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.8-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/listing.txt'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  app "ParaView-#{version}.app"
end
