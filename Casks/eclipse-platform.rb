cask 'eclipse-platform' do
  version '4.6.1,201609071200'
  sha256 'eb089d46d0b772228a49cc813f965d036a47e1f15a283bd46d2e27880214a7be'

  url "http://download.eclipse.org/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.tar.gz"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/eclipse/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
