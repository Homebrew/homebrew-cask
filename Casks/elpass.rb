cask 'elpass' do
  version '1.1.1,215'
  sha256 '838a7a5a5e4757a63f2fc863632fe87556eb00dfc2f8977f8165b91968141483'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
