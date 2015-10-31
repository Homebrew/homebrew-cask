cask :v1 => 'fantastical' do
  version '2.1.2'
  sha256 '44a709ab1eec68e3a9342cf75ca6dc354c46bfbbc9adaced9903169919e82d47'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          :sha256 => 'd823ba2dcd910df0dc869756cd447a8f89e51c72768525e225e97f27d813ccc4'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
