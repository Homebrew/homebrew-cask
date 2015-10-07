cask :v1 => 'powerphotos' do
  version '1.0.6'
  sha256 '927c1095858d259b9469c86d20ce39cf0bfc350ad0b64ae8ba0ca0557b632305'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.delete('.')}.zip"
  name 'PowerPhotos'
  appcast 'http://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          :sha256 => '91b33d29cd1d958bcaa11ec802b2b01a1436b21409887ca6c26a28a9408f9eeb'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'PowerPhotos.app'
end
