cask 'arranger' do
  version '1.6'
  sha256 'cc52b300a999b1b10bfc35cbd2846fc99ef1ded69b4d385971bf9ac499b3515f'

  url "http://bucketomac.de/downloads/Arranger#{version}.zip"
  appcast 'http://bucketomac.de/appcast/arrangercast.xml',
          checkpoint: '0d8030610ea9f97f5bc0f16dabb1cff33343108cb5a9a8414bdb8f45f1be747c'
  name 'Arranger'
  homepage 'http://bucketomac.de/arranger/arranger/'

  accessibility_access true
  depends_on macos: '>= :mountain_lion'

  app 'Arranger.app'
end
