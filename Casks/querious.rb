cask 'querious' do
  version '2.1.13'
  sha256 'b5fb10be64236629567a286f8c9c656e2b34a835ce26737f0c35ddfe68928ae5'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  app 'Querious.app'
end
