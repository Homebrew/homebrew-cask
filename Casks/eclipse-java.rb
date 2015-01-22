cask :v1 => 'eclipse-java' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 '457293948e937bbe00b642f99978f69861ef8decd54bb1bb49dfc3dcea6a74d2'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-java-luna-SR1a-macosx-cocoa.tar.gz'
  else
    sha256 'f66896dc46594737d0c60e60dc7bbbb84641d33aa2545e031c2a111c579a17b7'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-java-luna-SR1a-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end
