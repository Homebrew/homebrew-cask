cask 'acronis-true-image' do
  version '2020'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.acronis.com/u/AcronisTrueImage#{version}.dmg"
  appcast 'https://www.acronis.com/en-us/support/updates/index.html'
  name 'Acronis True Image'
  homepage 'https://www.acronis.com/personal/computer-backup/'

  app 'Acronis True Image.app'
end
