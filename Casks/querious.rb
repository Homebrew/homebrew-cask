cask 'querious' do
  version '3.0.2'
  sha256 '0485d3ba6e60983a9eddcbfcd62e150a4fb3ca48ef630a993680c12ffe886a08'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  auto_updates true

  app 'Querious.app'
end
