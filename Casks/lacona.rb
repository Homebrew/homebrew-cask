cask 'lacona' do
  version '0.7.0'
  sha256 'fde90f75f98287882630abdff1fd6014d079cb260b1c22d7b298f7fdbe20556a'

  # lacona-download.firebaseapp.com was verified as official when first introduced to the cask
  url "http://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  appcast 'https://lacona-download.firebaseapp.com/appcast.xml',
          checkpoint: '0fdbf0ce4b75081a5c9b96e1550d0ab76dbd9e359c26cb4f0c743ac72ac66ec9'
  name 'Lacona'
  homepage 'http://www.lacona.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
