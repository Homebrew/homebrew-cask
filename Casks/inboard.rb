cask :v1 => 'inboard' do
  version '1.0.2-271'
  sha256 '69fddd83a43ecce6254e524325ea5afb0108d41246e6fe618852775173821f65'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  name 'Inboard'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
