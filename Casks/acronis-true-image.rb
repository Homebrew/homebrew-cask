cask 'acronis-true-image' do
  version '2018'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.acronis.com/u/AcronisTrueImage#{version}.dmg"
  name 'Acronis True Image'
  homepage 'https://www.acronis.com/personal/computer-backup/'

  app 'Acronis True Image.app'
end
