cask 'fantastical' do
  version '2.3.3'
  sha256 'e2c5ae085a8be13178549b61d08f745f6c1e1bafff3fce46b18b5d423763d2e7'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: 'eb05a7047cde1294238bdd44ccb4c9ff4454f28424ec0cc676a695eb7bd38696'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
