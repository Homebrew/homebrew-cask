cask :v1 => 'paraview' do
  version '4.3.1'

  if MacOS.release == :snow_leopard
    sha256 'f968263782d1407c769c8d7b28872a43adb263d0820c9bebe0e0ea8cf2aaa3a0'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.to_f}&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit-SnowLeopard.dmg"
  else
    sha256 'cac627512f7d764ee85c601eeb9fbf269d4990f2a2345b72107d3b23a24642e6'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.to_f}&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit.dmg"
  end

  name 'ParaView'
  homepage 'http://www.paraview.org/'
  license :bsd

  app 'paraview.app'

  depends_on :arch => :x86_64
  depends_on :macos => '>= :snow_leopard'
end
