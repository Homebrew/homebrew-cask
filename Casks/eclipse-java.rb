cask :v1 => 'eclipse-java' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 'a4e80a5e4901027f74412786898456d8ce1b6b56d9689293b472f9509d1b65cf'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1/eclipse-java-luna-SR1-macosx-cocoa.tar.gz'
  else
    sha256 'adbfcd2fa587eac82a34da76079747120031a778478b3197ad1c94e537312268'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1/eclipse-java-luna-SR1-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :unknown

  app 'eclipse/Eclipse.app'
end
