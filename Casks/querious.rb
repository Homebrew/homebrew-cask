cask 'querious' do
  version '2.1.15'
  sha256 '8b349a02a5292ded25d9446d843e50ab94f4b1608bdeb6ef43415e7fb76ad4aa'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/release-updates.xml'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  auto_updates true

  app 'Querious.app'
end
