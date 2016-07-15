cask 'eclipse-platform' do
  version '4.6-201606061100'
  sha256 '39df3c9acfb294a7f18485bc6f1cde4a5d10a900db987a32aa510548c9a986bd'

  url "http://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version}/eclipse-platform-#{version.sub(%r{-.*}, '')}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
