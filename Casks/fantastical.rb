cask :v1 => 'fantastical' do
  version '2.0.6'
  sha256 'f84334c00dd43b92d1d230326641584e6887771db042f3f7dcf9d6f4164a35c0'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => '25b925b46633c66b6d10dda0f213614da63da9c80a231dc39c8ffb86e8b883e4'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
