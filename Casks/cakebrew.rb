cask :v1 => 'cakebrew' do
  version '1.1.4'
  sha256 '072a399ccbed4e08892a9e64a85db51383deec951f29f66a5bd28cee9360347d'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => '1c147ec8de9b02df0eab2bbcae96b65d6a5e6ee76a865a3f6ac081c6b4b8f65b'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
