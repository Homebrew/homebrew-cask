cask 'eclipse-rcp' do
  version '4.6.0'
  sha256 '5460e51dea3a58415f15cb59258aca067a95c958fb5a3e24b3bbf7a7fd7d616e'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-rcp-neon-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse for RCP and RAP Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
