cask 'fantastical' do
  version '2.3.6'
  sha256 '8ec9e80c720f9112c92521b4f133bc086403a7ec4a992d0780259db1c9d61f51'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: 'e0e74a37ec16479898a465138189750007c208ed37fc5ab1ca4ef0deee7fca54'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
