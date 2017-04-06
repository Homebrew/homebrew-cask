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
    version '5.3.0'
    sha256 '75b385dcf244f3942cb74eeed8e593d6744a330f1f97ae1301c6584da8d607c0'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=osx&downloadFile=ParaView-#{version}-Qt5-OpenGL2-MPI-OSX10.8-64bit.dmg"
    app "Paraview-#{version}.app"
  end

  appcast 'http://www.paraview.org/files/paraview-download.js',
          checkpoint: '583fd88c3ec75a28f83d7de14a76c039b0345575bb1fca801996087cedad65f0'
  name 'ParaView'
  homepage 'http://www.paraview.org/'
end
