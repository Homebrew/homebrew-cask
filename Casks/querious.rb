cask 'querious' do
  version '3.0.1'
  sha256 '427e4c32cb2a8539356b38e427c6008617783cefdf0438925ce458f7ef2bb3f2'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  auto_updates true

  app 'Querious.app'
end
