cask 'lingon-x' do
  version '4.3.7'
  sha256 '2a108b6da46f1b4f30b9ef95412c6b806c7e92f2b4a28bff7bf67558a7ec9e7b'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '30913d1fd664606610ddb39899a1a3038340282d5a6aa86351bd795429ebdab1'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
