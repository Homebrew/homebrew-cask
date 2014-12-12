cask :v1 => 'eclipse-ide-std' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
      sha256 '9bee76600de79d088741a16f2384c99ffe687188'
      url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR1/eclipse-java-luna-SR1-macosx-cocoa.tar.gz&mirror_id=105'
  else
      sha256 'adbfcd2fa587eac82a34da76079747120031a778478b3197ad1c94e537312268'
      url 'http://ftp.jaist.ac.jp/pub/eclipse/technology/epp/downloads/release/luna/SR1/eclipse-java-luna-SR1-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org'
  license :unknown

  app 'eclipse/Eclipse.app'
end
