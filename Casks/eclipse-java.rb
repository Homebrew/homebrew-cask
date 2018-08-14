cask 'eclipse-java' do
  version '4.8.0,photon:R'
  sha256 'dce58bbf72a1ad666e658da24b9f161fcafb939388fce9be870e0d68c3c907e9'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-java-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Java.app'
end
