cask :v1 => 'aria-maestosa' do
  version '1.4.9'
  sha256 '3a8d8bc625a6e27b2312ff1c008e78b64c94faa5ef263c85c6005e72a98ec1bf'

  url "https://downloads.sourceforge.net/sourceforge/ariamaestosa/AriaMaestosa-osx-#{version}.zip"
  homepage 'http://ariamaestosa.sourceforge.net'
  license :oss

  app "AriaMaestosa-#{version}/Aria Maestosa.app"
end
