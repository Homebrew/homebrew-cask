cask 'paraview' do
  version '5.6.0'
  sha256 '711ccfe071f32ee60b41b22c42e98193ccc336d89105c3786ac729e6951c4836'

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.8-64bit.dmg",
      user_agent: :fake
  appcast 'https://www.paraview.org/files/paraview-download.js'
  name 'ParaView'
  homepage 'https://www.paraview.org/'

  app "ParaView-#{version}.app"
end
