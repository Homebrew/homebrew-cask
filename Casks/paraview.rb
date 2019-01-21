cask 'paraview' do
  version '5.6.0'
  sha256 '7e326051fec9b83a3144bae8a0b99cdf00d00d04022a1723a3c97be5a7f33576'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.8-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/paraview-download.js'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  app "ParaView-#{version}.app"
end
