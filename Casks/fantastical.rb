cask :v1 => 'fantastical' do
  version '2.1'
  sha256 '019e286a22752f1e2f5f6ba5dfa9e100dfc441b8ddc75d645544a7bb94fbbb92'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => '7500e3e08c27c070e44202fa67eb40672c9f64a894d2c5c24bd5d4a9aae4661c'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
