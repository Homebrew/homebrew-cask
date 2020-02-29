cask 'elpass' do
  version '1.1.2,224'
  sha256 'ae5232cc13549e3f7f914bfd927cf1678c35031d0811e197302c665f22635562'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
