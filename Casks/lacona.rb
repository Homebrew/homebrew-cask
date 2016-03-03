cask 'lacona' do
  version '0.5.0'
  sha256 '6c541158e36d41d4cb81b7dbdb4c33703391fd085bd5084b6bd9fc78ff47bb2a'

  # lacona-download.firebaseapp.com was verified as official when first introduced to the cask
  url "http://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  appcast 'https://lacona-download.firebaseapp.com/appcast.xml',
          checkpoint: 'f760c7e4bd14dee76ba4fec36661e187999f8b61b3f41d3b3ff07e887c9c39c7'
  name 'Lacona'
  homepage 'http://www.lacona.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
