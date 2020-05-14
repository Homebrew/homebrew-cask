cask 'querious' do
  version '3.0.4'
  sha256 '464c028f30d88f840dc52cc9fb0401e0283c28754dfc3e0f89dd960960209fcc'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  auto_updates true

  app 'Querious.app'
end
