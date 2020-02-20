cask 'fliqlo' do
  version '1.8.1'
  sha256 '7d77145bc140290fb6f779d2d5d95b88f85efcd498e19f8cb4de68f09a904c21'

  url "https://fliqlo.com/download/Fliqlo%20#{version}.dmg",
      referer: 'https://fliqlo.com/#about'
  appcast 'https://fliqlo.com/changelog.txt'
  name 'Fliqlo'
  homepage 'https://fliqlo.com/'

  screen_saver 'Fliqlo.saver'
end
