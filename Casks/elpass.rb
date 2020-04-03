cask 'elpass' do
  version '1.1.4,248'
  sha256 '25615ab9be324c40e0ae260e30691d4f95550ed2f72442eba712cf6d68a1c9f8'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
