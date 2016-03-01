cask 'eclipse-rcp' do
  version '4.5.2'
  sha256 '1cfc4400582d94bf48ec5d8e91ec6d21fa2c664f541a97b7710e18abda80d38d'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-rcp-mars-2-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse for RCP and RAP Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
