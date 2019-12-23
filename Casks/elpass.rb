cask 'elpass' do
  version '1.0.5,173'
  sha256 '250a1aed16cf07de1394bf51d1cb2ec4c6bd0366106180f467095dc2d98d063d'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
