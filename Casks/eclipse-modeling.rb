cask :v1 => 'eclipse-modeling' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 'df00541d1291c9f4dda6917ec8f07f22b1cad645f9641be53d9988a86528099d'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1/eclipse-modeling-luna-SR1-macosx-cocoa.tar.gz'
  else
    sha256 'ad09c657dd1795eee42f1940473ce389168f819ecff7ea022ae0b9517e37f7be'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1/eclipse-modeling-luna-SR1-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :oss

  app 'eclipse/eclipse.app'
end
