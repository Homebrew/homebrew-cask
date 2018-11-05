cask 'querious' do
  version '2.1.12'
  sha256 '1d4d59dbb4c62759d9c7c0abacec9e41088c496bffa46f2d15050ba74606399f'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  app 'Querious.app'
end
