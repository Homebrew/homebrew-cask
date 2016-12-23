cask 'paraview' do
  if MacOS.version == :snow_leopard
    version '4.3.1'
    sha256 'f968263782d1407c769c8d7b28872a43adb263d0820c9bebe0e0ea8cf2aaa3a0'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit-SnowLeopard.dmg"
    app 'paraview.app'
  elsif MacOS.version == :lion
    version '5.1.2'
    sha256 '629fc1919a85f3f46343a307aa18f5e270a6254faf2d5e3e39adc738214789ae'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=osx&downloadFile=ParaView-#{version}-Qt4-OpenGL2-MPI-OSX10.7-64bit.dmg"
    app 'paraview.app'
  else
    version '5.2.0'
    sha256 '839a2813b577d001506d1900a12b3f32d50640a793edef8ddd7b90b954a78fe5'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=osx&downloadFile=ParaView-#{version}-Qt4-OpenGL2-MPI-OSX10.8-64bit.dmg"
    app "Paraview-#{version}.app"
  end

  name 'ParaView'
  homepage 'http://www.paraview.org/'
end
