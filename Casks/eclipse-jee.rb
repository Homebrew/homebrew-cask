cask :v1 => 'eclipse-jee' do
  version :latest
  sha256 :no_check

  if Hardware::CPU.is_32_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-macosx-cocoa.tar.gz'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-macosx-cocoa-x86_64.tar.gz'
  end
  homepage 'http://eclipse.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'eclipse/Eclipse.app'
end
