cask 'cakebrew' do
  version '1.2'
  sha256 '2d9de51fbca270abaf69a7b7fd822fe52790478508ab71401430d13d2bbcd098'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.zip"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          checkpoint: 'b21892747ea8b7924813c3c08cd52da136332886961dfef3d52cf53eb5b0de2a'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
