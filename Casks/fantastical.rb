cask 'fantastical' do
  version '2.3.7'
  sha256 '333f8f326dc3fa19d615e9dbb624d9123f0a9fdec4a852cd9002b1ebae420733'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: 'dac576c04fa7dba27ad64783f7c11853cd393f49ac7afa7da6f43d27a6cacc7d'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
