cask :v1 => 'librecad' do
  version '2.0.5'

  if MacOS.version <= :mountain_lion
    url "https://downloads.sourceforge.net/project/librecad/OSX/#{version}/LibreCAD-#{version}-MountainLion.dmg"
    sha256 '6f1f1fe3f49ac404608965c1d40e7a109b7f416b7b0624c4d8e11e72f01c7ef6'
  else
    url "https://downloads.sourceforge.net/project/librecad/OSX/#{version}/LibreCAD-#{version}-Mavericks.dmg"
    sha256 'ab8ccd20cb1f80b038e2aa471981d4e3e63a38ff632eba6382ef5904c4d3f2dd'
  end
  homepage 'http://librecad.org/'
  license :gpl

  app 'LibreCAD.app'
end
