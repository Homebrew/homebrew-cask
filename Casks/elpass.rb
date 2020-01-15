cask 'elpass' do
  version '1.0.7,192'
  sha256 '52b46555651c36fec740a10882f1b130ac637bb4779feb036bdd89bee362ab24'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
