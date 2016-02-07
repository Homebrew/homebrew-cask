cask 'eclipse-platform' do
  version '4.5-201506032000'
  sha256 '953b7ecacb3c84667c616e1b640240de8cf5c045f475d0aebc6179316ed083d6'

  url "http://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.to_i}/R-#{version}/eclipse-SDK-#{version.sub(%r{-.*}, '')}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
