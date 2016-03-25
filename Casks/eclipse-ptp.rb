cask 'eclipse-ptp' do
  version '4.5.2'
  sha256 'ca5b762715346f2a40a5c64bf355d1f6916afe73c2ecf2e6070b2c380c2d0a34'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-parallel-mars-2-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse Parallel Tools Platform'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
