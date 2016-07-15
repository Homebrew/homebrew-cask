cask 'lacona' do
  version '0.10.0'
  sha256 '32d5c430503c334443646152ff4d84d0ebd93b4e66db145b046cb2a405709691'

  # lacona-download.firebaseapp.com was verified as official when first introduced to the cask
  url "http://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  appcast 'https://lacona-download.firebaseapp.com/appcast.xml',
          checkpoint: '9152ad5c3e1d24d37b52a0a8e5acba65def94094dd8d39515f1390c8218b3744'
  name 'Lacona'
  homepage 'http://www.lacona.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
