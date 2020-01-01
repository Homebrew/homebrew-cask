cask 'elpass' do
  version '1.0.6,188'
  sha256 'f8616c2ff93201f8654392b43cfaedf18d8c7654df5d8f39ac0153baccc79540'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
