cask :v1 => 'eclipse-ide' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 '49cc7ff7ac89a8598157de3262128f0240f8283ecdcc9a9ae006143913a4bee6'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1/eclipse-standard-luna-SR1-macosx-cocoa.tar.gz'
  else
    sha256 '787969d8816d502675cff5b6c9ab1ef4a3b7144d3216def9f90ab623ce71edc1'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1/eclipse-standard-luna-SR1-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'eclipse/Eclipse.app'
end
