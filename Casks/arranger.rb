cask :v1 => 'arranger' do
  version '1.6'
  sha256 'cc52b300a999b1b10bfc35cbd2846fc99ef1ded69b4d385971bf9ac499b3515f'

  url "http://bucketomac.de/downloads/Arranger#{version}.zip"
  appcast 'http://bucketomac.de/appcast/arrangercast.xml',
          :sha256 => '6765d9f64d1d753ecf46699f0d67f2255f5a732daaa89baf5782684a5384c304'
  name 'Arranger'
  homepage 'http://bucketomac.de/arranger/arranger/'
  license :gratis

  app 'Arranger.app'

  accessibility_access true
end
