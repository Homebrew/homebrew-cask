cask :v1 => 'cakebrew' do
  version '1.1'
  sha256 'def78a58ec2aebb0af887713d9554d16ba41f6ce8350df684c8783c9190fbc73'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => 'cc9fc7cddf957d7d78d4e52247a943b4f114f0968f90a5608190225fcb25b33e'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
