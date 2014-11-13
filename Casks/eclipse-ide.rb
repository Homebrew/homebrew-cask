cask :v1 => 'eclipse-ide' do
  version '4.4.0'

  if Hardware::CPU.is_32_bit?
    sha256 'c902ee4d9f753b2bc48f7194ea9f5bb98a264a984f6aaead710f8b601c574505'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-standard-luna-R-macosx-cocoa.tar.gz'
  else
    sha256 'c902ee4d9f753b2bc48f7194ea9f5bb98a264a984f6aaead710f8b601c574505'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-standard-luna-R-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :unknown

  app 'eclipse/Eclipse.app'
end
