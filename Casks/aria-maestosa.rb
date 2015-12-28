cask 'aria-maestosa' do
  version '1.4.9'
  sha256 '3a8d8bc625a6e27b2312ff1c008e78b64c94faa5ef263c85c6005e72a98ec1bf'

  url "http://downloads.sourceforge.net/sourceforge/ariamaestosa/AriaMaestosa-osx-#{version}.zip"
  name 'Aria Maestosa'
  homepage 'http://ariamaestosa.sourceforge.net'
  license :gpl

  app "AriaMaestosa-#{version}/Aria Maestosa.app"
end
