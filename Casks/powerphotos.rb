cask 'powerphotos' do
  version '1.1.6'
  sha256 'aed1f6fe169b821c422d437f7df6d1e4a34c5be652793300394789180daff0a7'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'http://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: 'ce5f10cdbd431465c99689133d0c1cf97c8069d0413c55834fee0703c5b55089'
  name 'PowerPhotos'
  homepage 'http://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
