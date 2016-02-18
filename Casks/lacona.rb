cask 'lacona' do
  version '0.4.2'
  sha256 'b66796e3a489cbfb3ecd01a433da9af5806dcc48048f7175ee3407f2fb3d9d45'

  # lacona-download.firebaseapp.com was verified as official when first introduced to the cask
  url "http://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  appcast 'https://raw.githubusercontent.com/lacona/LaconaApp/master/CHANGELOG.md',
          checkpoint: 'b3c79253c0d5213a75f56ff72f35634cac1805d37b5cab160d11fa8c23bd39f1'
  name 'Lacona'
  homepage 'http://www.lacona.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Lacona.app'
end
