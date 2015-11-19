cask :v1 => 'photoscanpro' do
  version '1.1.6'
  sha256 '9a725395d466f89a39acc63af3c60ab07c716ae7f9e6095c036c2805c0ed9100'

  url "http://download.agisoft.com/photoscan-pro_#{version.gsub('.','_')}.dmg"
  name 'Agisoft PhotoScan Professional'
  homepage 'http://www.agisoft.com/'
  license :commercial

  app 'PhotoScanPro.app'
end
