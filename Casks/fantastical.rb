cask 'fantastical' do
  version '2.3.1'
  sha256 'f8c7de11e44dd90a708e6887bd06533c56e5a4d8bd6dc87de5bfde6dfefdc8cb'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '81dbda32bc9145f732cf66f33a76fd61ef7111cbaec9b957b9f5030befb03d05'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
