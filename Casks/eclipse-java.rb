cask :v1 => 'eclipse-java' do
  version '4.4.2'

  if Hardware::CPU.is_32_bit?
    sha256 '9a5424bb9c0e4ec336fcfae85aec3dbab5163e403dcde3abb6054b1cbe2d4b7a'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-macosx-cocoa.tar.gz'
  else
    sha256 '00e7890cf46d6b8ada002f39f7d2ed576c52eb87039b4e2ce92eeffce9866fea'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-macosx-cocoa-x86_64.tar.gz'
  end

  name 'Eclipse'
  name 'Eclipse IDE for Java Developers'
  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end
