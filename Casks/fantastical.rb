cask :v1 => 'fantastical' do
  version '2.0'
  sha256 '002cac160c3d1dc4a0ecccdc8215ba0b7a4cffd7ec2aff3b61bba8598d09bf95'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => '25b925b46633c66b6d10dda0f213614da63da9c80a231dc39c8ffb86e8b883e4'
  name 'Fantastical'
  homepage 'http://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
