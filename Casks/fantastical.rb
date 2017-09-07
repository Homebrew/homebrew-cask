cask 'fantastical' do
  version '2.4.1'
  sha256 '1d6c59dcc3bcc9e4c87974d028ce88621a12b98f6cf7279eca2a1d0076fd3847'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '8c9634eb1bfc76338375e16c255f25dda5265c8ded432b1128b38b05e4a25e78'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  auto_updates true

  app "Fantastical #{version.major}.app"

  zap trash: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
