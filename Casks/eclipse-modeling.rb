cask :v1 => 'eclipse-modeling' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 '3224dcba37aba162a3c0e592cd8f64ad6d8296c64579c4132bb3e114890340af'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-modeling-luna-SR1a-macosx-cocoa.tar.gz'
  else
    sha256 'd9c978019365b2de0d52fa210a9a9d23246455c5c45f62fb35f32498d42b7c44'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-modeling-luna-SR1a-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :oss

  app 'eclipse/eclipse.app'
end
