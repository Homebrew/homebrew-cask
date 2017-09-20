cask 'atext' do
  version '2.21'
  sha256 '8ef2fc8f136f15ab4c1218a74097a9a83407ede3f79e6e616eade920bfff02ba'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: '9d96d77e7584acfe70ee83f0d00342fbe0b9d0b39e23685f9c92001bbd12f983'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

  app 'aText.app'
end
