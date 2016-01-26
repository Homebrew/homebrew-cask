cask 'eclipse-ptp' do
  version '4.5.1'
  sha256 '4d9a3b7c52e40fde59335779803128d5682dfbaae176ab604894d519193fd799'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-parallel-mars-1-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse Parallel Tools Platform'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
