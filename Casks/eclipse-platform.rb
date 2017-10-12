cask 'eclipse-platform' do
  version '4.7.1a,201710090410'
  sha256 'fcbdc9f97dd209a303e49d431f173004b5d3c16dfa4ea18b31945de44d6c15aa'

  url "http://download.eclipse.org/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/eclipse/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Platform.app'
end
