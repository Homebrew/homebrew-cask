cask 'connected-desktop' do
  version '2.4.20_11945'
  sha256 '3c64d4234a7a2dc69112718be79eae2bad6b0c6bcd9514ce0dab08b5e2e64c98'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.4/software/Connected_Desktop_#{version}.dmg"
  appcast 'http://appsoftware.connecteddata.com/mac/2.0/Appcast.xml',
          :sha256 => '51d51ee36b94570f4c02379f9aef8d0b1387abf97509757da89f0dd82b30cb95'
  name 'Connected Desktop'
  homepage 'http://www.filetransporter.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Connected Desktop.app'
end
