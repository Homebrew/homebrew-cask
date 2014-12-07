cask :v1 => 'eclipse-jee' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 'ba738cf917df43df7f118fcc2990436cbcd6f2c26290a97dcea12e143250c60f'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1/eclipse-jee-luna-SR1-macosx-cocoa.tar.gz'
  else
    sha256 'f17b229e6062cbe2bdf285188faa750d554e89524e23a9adf504fdf6cf3cb257'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1/eclipse-jee-luna-SR1-macosx-cocoa-x86_64.tar.gz'
  end
  homepage 'http://eclipse.org/'
  license :unknown

  app 'eclipse/Eclipse.app'
end
