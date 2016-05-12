cask 'inboard' do
  version '1.0.8-285'
  sha256 'aa787c9a3c75788499ba530bc5377523b59ea76e109899c843ba9def7f37cf46'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'http://inboardapp.com/appcast.xml',
          checkpoint: 'e53ad34aa629142245d50f2d35f51cf5c262013afe9007337ec9613b972e8d8c'
  name 'Inboard'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
