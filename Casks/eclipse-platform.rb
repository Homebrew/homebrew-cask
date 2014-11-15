cask :v1 => 'eclipse-platform' do
  version '4.4.0'

  if Hardware::CPU.is_32_bit?
    sha256 '28e873cc4e575bbf3abb364ccd7dec59394891f5ca80ee7b591a7982345d0ab9'
    url 'http://download.eclipse.org/eclipse/downloads/drops4/R-4.4-201406061215/eclipse-SDK-4.4-macosx-cocoa.tar.gz'
  else
    sha256 '09e127b85b136f60bec18c4c823596c145dbc5fbcfe6af0e4fe2a27590ffa5a0'
    url 'http://download.eclipse.org/eclipse/downloads/drops4/R-4.4-201406061215/eclipse-SDK-4.4-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org'
  license :unknown

  app 'eclipse/Eclipse.app'
end
