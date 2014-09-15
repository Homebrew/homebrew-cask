class EclipsePlatform < Cask
  if Hardware::CPU.is_32_bit?
    url 'http://download.eclipse.org/eclipse/downloads/drops4/R-4.4-201406061215/eclipse-SDK-4.4-macosx-cocoa.tar.gz'
    sha256 '28e873cc4e575bbf3abb364ccd7dec59394891f5ca80ee7b591a7982345d0ab9'
  else
    url 'http://download.eclipse.org/eclipse/downloads/drops4/R-4.4-201406061215/eclipse-SDK-4.4-macosx-cocoa-x86_64.tar.gz'
    sha256 '09e127b85b136f60bec18c4c823596c145dbc5fbcfe6af0e4fe2a27590ffa5a0'
  end
  version '4.4.0'
  homepage 'http://eclipse.org'
  app 'eclipse/Eclipse.app'
end
