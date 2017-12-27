cask 'eclipse-platform' do
  version '4.7.2,201711300510'
  sha256 '46b7333b5f9314e6d71c5fef3c4ef92332e921ed583f1ec40f7fb39310601f72'

  url "http://download.eclipse.org/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/eclipse/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Platform.app'
end
