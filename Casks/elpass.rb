cask 'elpass' do
  version '1.1.3,237'
  sha256 'c74dc8c1a928b20484662f0e44d4c87c5a1af997c35113b2e350420a902f8513'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
