cask 'fantastical' do
  version '2.3.4'
  sha256 '209100f518538e6569f0e1cb85b282bd9e0cdb1ee4a65a3e7f4489684bf6ea60'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '8da257b7469f48acae8e6651b74be23156a0d4929e0c8bf9ad226d1bb6490ba8'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
