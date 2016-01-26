cask 'cakebrew' do
  version '1.1.5'
  sha256 '8a49e2bd6172ba7466dbd760242f037da99bf0b327c0ea0ea25f2ef099e89aa9'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.zip"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          checkpoint: 'a6708f8033a59e1f064d4eee9ca50427b275fcf394d3f241dee6641e07a6540c'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
