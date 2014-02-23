class Librecad < Cask
  case MacOS.version
    when :snowleopard
      url 'http://downloads.sourceforge.net/project/librecad/OSX/2.0.2/LibreCAD-SnowLeopard.dmg'
      version '2.0.2'
      sha1 '266f3745fa40ace175d8fbb8c05004f3c19d6015'
    when :lion
      url 'http://downloads.sourceforge.net/project/librecad/OSX/2.0.2/LibreCAD-Lion.dmg'
      version '2.0.2'
      sha1 'b525391b2d83c15e92b448af099b5f3b7e2441f0'
    when :mountainlion
      url 'http://downloads.sourceforge.net/project/librecad/OSX/2.0.2/LibreCAD-MountainLion.dmg'
      version '2.0.2'
      sha1 'acfd8eae043b7ecb7a5558dcace7c47c2f286c78'
    else
      url 'http://downloads.sourceforge.net/project/librecad/OSX/2.0.2/LibreCAD-Mavericks.dmg'
      version '2.0.2'
      sha1 '6420b84d69efda59b12d40ab07f01a469c1fac86'
  end
  homepage 'http://librecad.org/'
  link 'LibreCAD.app'
end
