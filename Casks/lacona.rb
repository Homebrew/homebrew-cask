cask 'lacona' do
  version '0.4.2'
  sha256 'b66796e3a489cbfb3ecd01a433da9af5806dcc48048f7175ee3407f2fb3d9d45'

  url "http://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  name 'Lacona'
  homepage 'http://www.lacona.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Lacona.app'
end
