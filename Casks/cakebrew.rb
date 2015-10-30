cask :v1 => 'cakebrew' do
  version '1.1.5'
  sha256 '8a49e2bd6172ba7466dbd760242f037da99bf0b327c0ea0ea25f2ef099e89aa9'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.zip"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => 'efcdc4e76bd1d3b268b6b371f729d15b40f05852e4a08cde7c37186fbe42e51f'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
