cask 'eclipse-rcp' do
  version '4.5.1'
  sha256 'a257149a47065b35dc66f8795a91fe36fdc1985fbc4b3d20bd6853b518e6e427'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-rcp-mars-1-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse for RCP and RAP Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
