cask 'fliqlo' do
  version '1.8'
  sha256 'f5ef7c842a5e45229737cfd38712225b4edc5b5c15879254d00932cf2dde5710'

  url "https://fliqlo.com/download/Fliqlo%20#{version}.dmg",
      referer: 'https://fliqlo.com/#about'
  appcast 'https://fliqlo.com/changelog.txt'
  name 'Fliqlo'
  homepage 'https://fliqlo.com/'

  screen_saver 'Fliqlo.saver'
end
