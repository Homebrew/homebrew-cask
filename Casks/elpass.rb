cask 'elpass' do
  version '1.1.7,266'
  sha256 '4ad2d532c6bf1c07f67d5f0e963eb16ee22532a2042eb127de36cb89d0e1469c'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
