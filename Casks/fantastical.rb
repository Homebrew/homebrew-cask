cask 'fantastical' do
  version '2.2.4'
  sha256 'cc7d9d2d153526db9274be678fa58cf1c434784f12018fcacde3be1b7a82fcfe'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: 'c0a148abbbda30ca633e733c330cccfd8298bfb6cb5bdfbf1a5a905b9372ef58'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
