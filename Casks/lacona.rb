cask 'lacona' do
  version '0.3'
  sha256 'e45fb6f855ffca635b96f79bdc262d46d1e384157163694f8686c29095c5e450'

  url "http://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  name 'Lacona'
  homepage 'http://www.lacona.io'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Lacona.app'
end
