cask 'elpass' do
  version '1.1.5,252'
  sha256 '73c5d365d90e17566cc59ba43daba783f116f94b1645568f89c1801ed1cb45bf'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
