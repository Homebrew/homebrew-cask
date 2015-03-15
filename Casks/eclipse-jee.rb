cask :v1 => 'eclipse-jee' do
  version '4.4.2'

  if Hardware::CPU.is_32_bit?
    sha256 '319a0c224c356aca62d3aae2b157cb958031e4afb4dfd41f6ab853915cd62dba'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-macosx-cocoa.tar.gz'
  else
    sha256 '27e4307b45b76f664c52c43995cc2dca605cc751aa4605baf08b625eacf3d6ab'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-macosx-cocoa-x86_64.tar.gz'
  end

  name 'Eclipse'
  name 'Eclipse IDE for Java EE Developers'
  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end
