cask 'paraview' do
  if MacOS.version == :snow_leopard
    version '4.3.1'
    sha256 'f968263782d1407c769c8d7b28872a43adb263d0820c9bebe0e0ea8cf2aaa3a0'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit-SnowLeopard.dmg"
  else
    version '5.0.1'
    sha256 '307f8fde923abdbf62b7ecfc4db4bbe8352233295593de0f8dfd6641857a4327'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=osx&downloadFile=ParaView-#{version}-Qt4-OpenGL2-MPI-OSX10.7-64bit.dmg"
  end

  name 'ParaView'
  homepage 'http://www.paraview.org/'

  depends_on arch: :x86_64
  depends_on macos: '>= :snow_leopard'

  app 'paraview.app'
end
