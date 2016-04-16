cask 'lacona' do
  version '0.6.0'
  sha256 '0b0e61d5534e4980e6e114be67e72e72a046bc5b8267b6979b38442c46d40a81'

  # lacona-download.firebaseapp.com was verified as official when first introduced to the cask
  url "http://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  appcast 'https://lacona-download.firebaseapp.com/appcast.xml',
          checkpoint: 'fa289a06d4d226b7522f5e9ee04432ea98cec17f2713d086e87fa828dfcea3ed'
  name 'Lacona'
  homepage 'http://www.lacona.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
