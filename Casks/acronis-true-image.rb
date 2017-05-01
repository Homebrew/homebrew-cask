cask 'acronis-true-image' do
  version :latest
  sha256 :no_check

  url 'http://dl.acronis.com/s/AcronisTrueImage2017.dmg'
  name 'AcronisTrueImage'
  homepage 'http://www.acronis.com/de-de/personal/computer-backup/'

  app 'Acronis True Image.app'
end
