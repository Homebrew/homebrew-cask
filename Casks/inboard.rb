cask :v1 => 'inboard' do
  version '1.0.2-271'
  sha256 '69fddd83a43ecce6254e524325ea5afb0108d41246e6fe618852775173821f65'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  name 'Inboard'
  appcast 'http://inboardapp.com/appcast.xml',
          :sha256 => '326af38da9022b159f30356465725bab198645bd4e5e124a13687db7cb3a139f'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
