cask 'cakebrew' do
  version '1.1.5'
  sha256 '8a49e2bd6172ba7466dbd760242f037da99bf0b327c0ea0ea25f2ef099e89aa9'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.zip"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          checkpoint: '73aec6bf287ccff58f6e34ca35798a606b11a5665d52da829f7b5bd0573b4088'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
