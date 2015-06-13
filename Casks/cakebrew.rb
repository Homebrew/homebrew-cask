cask :v1 => 'cakebrew' do
  version '1.1.1'
  sha256 '48c560cfbec435e5b57aaf3a2d9c8696547b3b9c1d46a862abcc4b67f1906d87'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => 'cc9fc7cddf957d7d78d4e52247a943b4f114f0968f90a5608190225fcb25b33e'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
