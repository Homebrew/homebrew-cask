cask 'lacona' do
  version '0.9.0'
  sha256 'd6fa891f1595e40685b543117f764e243183b1629cb3ef63f11f6690b3c9294b'

  # lacona-download.firebaseapp.com was verified as official when first introduced to the cask
  url "http://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  appcast 'https://lacona-download.firebaseapp.com/appcast.xml',
          checkpoint: 'cd27dfb2b742b52cdcdebac2962d27d81839415f23db4a9a4652fb9c5a253522'
  name 'Lacona'
  homepage 'http://www.lacona.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
