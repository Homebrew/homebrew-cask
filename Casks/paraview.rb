cask 'paraview' do
  if MacOS.release == :snow_leopard
    version '4.3.1'
    sha256 'f968263782d1407c769c8d7b28872a43adb263d0820c9bebe0e0ea8cf2aaa3a0'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.to_f}&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit-SnowLeopard.dmg"
  else
    version '5.0.0'
    sha256 '9c52b547794a38a38e4fc50ac175c32bf6c8c331c9464d572c186e6cc51f6d18'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.to_f}&type=binary&os=osx&downloadFile=ParaView-#{version}-Qt4-OpenGL2-MPI-OSX10.7-64bit.dmg"
  end

  name 'ParaView'
  homepage 'http://www.paraview.org/'
  license :bsd

  depends_on arch: :x86_64
  depends_on macos: '>= :snow_leopard'

  app 'paraview.app'
end
