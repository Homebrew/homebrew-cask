cask 'paraview' do
  version '5.6.2'
  sha256 '9cbc9ff9b10625ccd38fd018d3e5b0424c5d394b1b57ff9d1faec182efd6101a'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.12-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/listing.txt'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  depends_on macos: '>= :sierra'

  app "ParaView-#{version}.app"
end
