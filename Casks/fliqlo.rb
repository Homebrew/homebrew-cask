cask 'fliqlo' do
  version '1.7.2'
  sha256 '20f81b5a06966cf729bcb065d151a6f89958b34d6339e6ea1bd7221b12bdd6ae'

  url "https://fliqlo.com/download/Fliqlo%20#{version}.dmg",
      referer: 'https://fliqlo.com/#about'
  appcast 'https://fliqlo.com/changelog.txt'
  name 'Fliqlo'
  homepage 'https://fliqlo.com/'

  screen_saver 'Fliqlo.saver'
end
