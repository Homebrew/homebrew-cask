cask 'fantastical' do
  version '2.4'
  sha256 'f2ff988e7aec5e933f9d5e7784e5ead84f1edb0f43c950218881ceddaf2f66cc'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: 'c044ebdf2a423964cf2a576059ec65f2d8be775bef4dfb47f994b61f3d5a751a'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  zap trash: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
