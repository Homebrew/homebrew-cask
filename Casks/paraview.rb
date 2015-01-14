cask :v1 => 'paraview' do
  version '4.2.0'

  if MacOS.release <= :mountain_lion
    sha256 '8784481c90b58b0c6158e21b7f978a7d78caa67c63d28d6d5d770ef43f0ad890'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v4.1&type=binary&os=osx&downloadFile=ParaView-4.1.0-Darwin-64bit-Lion-Python27.dmg"
  elsif MacOS.release == :snow_leopard
    sha256 'fd4783bd2c7892ed24bc6ee59294d932e7a469cd14f7766ae05249fd1e603b'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v4.2&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit-SnowLeopard.dmg"
  else
    sha256 'e2139b7f775f9c774d6a5ea00b08bcb7c57eaea7825e5f92cc6c0a58700d763f'
    url "http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v4.2&type=binary&os=osx&downloadFile=ParaView-#{version}-Darwin-64bit.dmg"
  end

  homepage 'http://www.paraview.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'paraview.app'

  depends_on :arch => :x86_64
end
