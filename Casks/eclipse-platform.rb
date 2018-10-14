cask 'eclipse-platform' do
  version '4.9,201809060745'
  sha256 '22028f455a9745165c48f4d92045560f8995a5fbd9037d533939dace9b6e1ead'

  url "http://download.eclipse.org/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/eclipse/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Platform.app'
end
