cask 'connected-desktop' do
  version '2.4.20_11945'
  sha256 '3c64d4234a7a2dc69112718be79eae2bad6b0c6bcd9514ce0dab08b5e2e64c98'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.4/software/Connected_Desktop_#{version}.dmg"
  # connecteddata.com verified as official when first introduced to the cask
  appcast 'http://appsoftware.connecteddata.com/mac/2.0/Appcast.xml',
          checkpoint: 'bafddaa3600663a31955344669f580ccff86ca00da43768edffae3a8842a5c89'
  name 'Connected Desktop'
  homepage 'http://www.filetransporter.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Connected Desktop.app'
end
