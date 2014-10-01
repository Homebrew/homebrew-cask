class ConnectedDesktop < Cask
  version '2.4.20_11945'
  sha256 '3c64d4234a7a2dc69112718be79eae2bad6b0c6bcd9514ce0dab08b5e2e64c98'

  url "https://secure.connecteddata.com/mac/2.4/software/Connected_Desktop_#{version}.dmg"
  appcast 'http://appsoftware.connecteddata.com/mac/2.0/Appcast.xml'
  homepage 'http://www.filetransporter.com/'
  license :unknown

  app 'Connected Desktop.app'
end
