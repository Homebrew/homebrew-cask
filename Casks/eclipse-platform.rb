cask 'eclipse-platform' do
  version '4.7.3a,201803300640'
  sha256 'c7ca985ffaf604508371945d46f4af5de86aceea722034100ec1280202111f8d'

  url "http://download.eclipse.org/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/eclipse/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Platform.app'
end
