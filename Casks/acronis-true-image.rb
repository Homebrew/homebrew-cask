cask 'acronis-true-image' do
  version '2017.11.04,6115'
  sha256 '6fad60b02751788b26b062d64fa29520df5c4b4b1eeb1eaa9510b10797ac3ad4'

  url "https://dl.acronis.com/s/AcronisTrueImage#{version.major}.dmg"
  appcast 'https://www.acronis.com/en-us/support/updates/changes.html?p=39955',
          checkpoint: '8c25836b3c2cf2bc0a083c1d6742138eae724fcd06bb0c79b9179edb25a1fdd0'
  name 'Acronis True Image'
  homepage 'https://www.acronis.com/de-de/personal/computer-backup/'

  app 'Acronis True Image.app'
end
