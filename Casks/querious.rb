cask 'querious' do
  version '2.1.1'
  sha256 'd3973d28a860a66548ff94862123f00b2b2fb11715015cede784f502914cffe6'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: 'f0d6f135fe4cd1400bd9f287aa29092b8c63eb3321b9afeaccc70904dd49351d'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  app 'Querious.app'
end
