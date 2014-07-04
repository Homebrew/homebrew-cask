class EclipseJee < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-macosx-cocoa-x86_64.tar.gz'
    sha256 '6767a56d906ec79d1ab58158d1815cc3cee15a82ce3805309164b8466ca45d79'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-macosx-cocoa.tar.gz'
    sha256 '97141e1fb9230d81eb3a59788e7941d062cfcfafcb781c8dde1cc561aa914b8a'
  end
  version '4.4.0'
  homepage 'http://eclipse.org/'
  link 'eclipse/Eclipse.app'
end
