cask :v1 => 'eclipse-rcp' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 'd1801a1742ff9a96252f30a6234ee306023d228d0a22ab09a79f8ab6f0509132'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-rcp-luna-SR1a-macosx-cocoa.tar.gz'
  else
    sha256 'a105f7457c2820c8852c6e066e500e916074ba2d71eb87c4f296b3e77c1de44a'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-rcp-luna-SR1a-macosx-cocoa-x86_64.tar.gz'
  end

  name 'Eclipse'
  name 'Eclipse for RCP and RAP Developers'
  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end
