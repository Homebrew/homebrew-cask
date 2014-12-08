cask :v1 => 'paraview' do
  version '4.1.0'

  if MacOS.version < :mavericks
    sha256 '8784481c90b58b0c6158e21b7f978a7d78caa67c63d28d6d5d770ef43f0ad890'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v4.1&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit-Lion-Python27.dmg"
  else
    sha256 '1eef4a2ee155049059967733e40010e86cc6cd05458de676217af5c276995817'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v4.1&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit.dmg"
  end

  homepage 'http://www.paraview.org/'
  license :unknown

  app 'paraview.app'

  depends_on :arch => :x86_64
end
