cask 'acronis-true-image' do
  version '2017.11.04,6115'
  sha256 '6fad60b02751788b26b062d64fa29520df5c4b4b1eeb1eaa9510b10797ac3ad4'

  url "http://dl.acronis.com/s/AcronisTrueImage#{version.major}.dmg"
  appcast 'https://www.acronis.com/en-us/support/updates/changes.html?p=39955',
          checkpoint: '64a5df85dc47fd0fe89569d55f4d4fdc1d4f9e8da9ef72a79b2ad5205296b402'
  name 'Acronis True Image'
  homepage 'http://www.acronis.com/de-de/personal/computer-backup/'

  app 'Acronis True Image.app'
end
