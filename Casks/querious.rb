cask 'querious' do
  version '2.0'
  sha256 '4c5ee422fe2d37e365574541a6565dc8b9a81dacc8ca0da8fa5898b67d736b47'

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: '72b9051269861bacefd1f4614e34f4edf22b6176c576b250c7f07290b3916135'
  name "Querious #{version.major}"
  homepage 'https://www.araelium.com/querious/'

  app 'Querious.app'
end
