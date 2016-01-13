cask 'arranger' do
  version '1.6'
  sha256 'cc52b300a999b1b10bfc35cbd2846fc99ef1ded69b4d385971bf9ac499b3515f'

  url "http://bucketomac.de/downloads/Arranger#{version}.zip"
  appcast 'http://bucketomac.de/appcast/arrangercast.xml',
          :sha256 => '8d87221129aea93b0590d40cf17707300e105998f85b0b102c38f5798b9d9b84'
  name 'Arranger'
  homepage 'http://bucketomac.de/arranger/arranger/'
  license :gratis

  accessibility_access true

  app 'Arranger.app'
end
