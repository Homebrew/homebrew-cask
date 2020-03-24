cask 'querious' do
  version '3.0.3'
  sha256 'f65a2ca31954c6dfb83e78be65450c830b32ae638ad02c18c3f71bc8a694dc1c'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  auto_updates true

  app 'Querious.app'
end
