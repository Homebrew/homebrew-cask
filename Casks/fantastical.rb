cask :v1 => 'fantastical' do
  version '2.0.7'
  sha256 '25ae43ca4f9285a487bdc2eb43b348a9fa9f9c09bb2ac0a80380a114b9040888'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => '3634a59497cc6131cbadc25e1b6b90d7d5576e6a563c272cca462b92111c7a60'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
