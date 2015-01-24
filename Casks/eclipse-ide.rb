cask :v1 => 'eclipse-ide' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 'ab9c32bc1d3ff8ebbe763b24ef8a2a1c12e3366427eaebfafaf29f349683d07c'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-standard-luna-SR1a-macosx-cocoa.tar.gz'
  else
    sha256 '528fdda23799600126b0bdd9341d3b749e315eb914a3187bc66317cf9c24d499'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-standard-luna-SR1a-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end
