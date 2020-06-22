cask 'elpass' do
  version '1.1.6,265'
  sha256 '1d99d79ed12d65e703d3cdd7d554b54982360bd00ca952960ff373179f95a56b'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
