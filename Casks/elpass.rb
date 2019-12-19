cask 'elpass' do
  version '1.0.4,164'
  sha256 'e33b2ef4a18c2e8c4a285ffaf865d64ca1c8a8f456754481423554799c21b797'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
