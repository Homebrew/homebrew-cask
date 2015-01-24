cask :v1 => 'eclipse-jee' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 '3e3d6c80fb0a4c4fa12060cd52680df0722ebc45efae27e367c1d2a8fa0b8b0b'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-jee-luna-SR1a-macosx-cocoa.tar.gz'
  else
    sha256 '6f24c787d247323a69b3c2ba0312edce46a23337d61199276cd2ea8681e90612'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-jee-luna-SR1a-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end
