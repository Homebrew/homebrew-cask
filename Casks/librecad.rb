cask 'librecad' do
  version '2.0.8'

  if MacOS.release <= :mavericks
    # sourceforge.net is the official download host per the vendor homepage
    url "http://downloads.sourceforge.net/project/librecad/OSX/#{version}/LibreCAD-#{version}-Mavericks.dmg"
    sha256 '83b33e4f8cb49eab76afbe001d521ceb59509b7fc87be396c12b8a4980192834'
  else
    # sourceforge.net is the official download host per the vendor homepage
    url "http://downloads.sourceforge.net/project/librecad/OSX/#{version}/LibreCAD-#{version}-Yosemite.dmg"
    sha256 '1c2590875deccd0915beb7da3305973140b66349474b3ef5790e17132e2918a8'
  end

  name 'LibreCAD'
  homepage 'http://librecad.org/'
  license :gpl

  app 'LibreCAD.app'
end
