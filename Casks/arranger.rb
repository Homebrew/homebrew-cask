cask 'arranger' do
  version '1.6'
  sha256 'cc52b300a999b1b10bfc35cbd2846fc99ef1ded69b4d385971bf9ac499b3515f'

  url "http://bucketomac.de/downloads/Arranger#{version}.zip"
  appcast 'http://bucketomac.de/appcast/arrangercast.xml',
          checkpoint: 'c6938ca1a2301d4d20f70f1012fd7d244e71d42f06bebb126dd8ee126bac3930'
  name 'Arranger'
  homepage 'http://bucketomac.de/arranger/arranger/'

  accessibility_access true

  app 'Arranger.app'
end
