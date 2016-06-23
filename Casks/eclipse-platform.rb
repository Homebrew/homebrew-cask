cask 'eclipse-platform' do
  version '4.6-201606061100'
  sha256 'd8c0b7b970581bbfab047375c0bf44243f5f4e528e950be2313e275451d684b6'

  url "http://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.to_i}/R-#{version}/eclipse-SDK-#{version.sub(%r{-.*}, '')}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
