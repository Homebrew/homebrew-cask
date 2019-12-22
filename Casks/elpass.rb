cask 'elpass' do
  version '1.0.5,172'
  sha256 '42c37a847585ba5d394edf96ba027f019e0d8477dc058985e82a358158e2fcf0'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
