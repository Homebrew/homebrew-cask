cask 'fantastical' do
  version '2.4.2'
  sha256 'c885cae9e546cf0d6349ae1496b0d18e1405c78cbd2a7b03c1a1b6156ac2bb13'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: 'e34a6efab9a7bbeb8cccb4a73dbc00ded20bf937a0ced86122831e9ab39332bc'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  auto_updates true

  app "Fantastical #{version.major}.app"

  zap trash: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
