cask 'hirundo' do
  version '0.9.7'
  sha256 'd962b39cdd6626475d75e2c14a88a5495ef1760419ac8815ee66b4b3930f7d83'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  appcast 'https://stylemac.com/hirundo/versions/current.json',
          checkpoint: '9ddb3a38601017b621f4824953afb7271635a97d38b31c1b5c6b7782a6a31e60'
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'

  app 'Hirundo.app'
end
