cask 'cakebrew' do
  version '1.1.5'
  sha256 '8a49e2bd6172ba7466dbd760242f037da99bf0b327c0ea0ea25f2ef099e89aa9'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.zip"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :checkpoint => 'e8994af1206c2e0d34cb6d2715e3218baa4e58811072183e7305b09707e21b07'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
