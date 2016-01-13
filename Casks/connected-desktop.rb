cask 'connected-desktop' do
  version '2.4.20_11945'
  sha256 '3c64d4234a7a2dc69112718be79eae2bad6b0c6bcd9514ce0dab08b5e2e64c98'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.4/software/Connected_Desktop_#{version}.dmg"
  appcast 'http://appsoftware.connecteddata.com/mac/2.0/Appcast.xml',
          :checkpoint => 'd6de7927ec9a6e23f96679a84e934d75d4b8a662b78b0ddbf6151f5a3ee8685e'
  name 'Connected Desktop'
  homepage 'http://www.filetransporter.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Connected Desktop.app'
end
