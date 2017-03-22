cask 'querious' do
  version '2.0'
  sha256 '4c5ee422fe2d37e365574541a6565dc8b9a81dacc8ca0da8fa5898b67d736b47'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: 'e3a304a3acb9e95a070530f27b13dc96dd404927fa3e8e94ee0596b647e924bf'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  app 'Querious.app'
end
