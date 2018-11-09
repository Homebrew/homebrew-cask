cask 'acronis-true-image' do
  version '2019'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.acronis.com/u/AcronisTrueImage#{version}.dmg"
  appcast 'https://dl.acronis.com/u/liveupdate/%7B2CE2087A-349A-4F8A-9919-6AF8B53D8F99%7D/appcast.xml'
  name 'Acronis True Image'
  homepage 'https://www.acronis.com/personal/computer-backup/'

  app 'Acronis True Image.app'
end
