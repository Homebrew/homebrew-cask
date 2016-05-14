cask 'fantastical' do
  version '2.2.2'
  sha256 '53fc7655c095616424a2b7e89d3a6f48edf6119acf676af33f2c3bf01d3febb2'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '872e73fcc7c824dfe59f9daa3e9958a8bdb69c238d48d4fed9ca3a32e6932acd'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
