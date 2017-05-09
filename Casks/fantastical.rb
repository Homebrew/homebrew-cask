cask 'fantastical' do
  version '2.3.6'
  sha256 '8ec9e80c720f9112c92521b4f133bc086403a7ec4a992d0780259db1c9d61f51'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '847b3c5ca9527f7cff6df617e21fe775852f7d180f1ed28d49021bccc1600512'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
