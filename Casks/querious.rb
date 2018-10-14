cask 'querious' do
  version '2.1.11'
  sha256 'f13cf1c3b32b968162db95aa7b23e7af75c4acf1ce8ad9333f943f0af0b7b9a5'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  app 'Querious.app'
end
