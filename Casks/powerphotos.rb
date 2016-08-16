cask 'powerphotos' do
  version '1.1.9'
  sha256 '2517c6911789a816ae28d6986d7cdce57fe3341853f2200e1a13e02f0e9424c5'

  # s3.amazonaws.com/fatcatsoftware/powerphotos was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: '844a4522eac5692df0422d57288d6fb852d0e31a064041089e1416f240820a94'
  name 'PowerPhotos'
  homepage 'https://www.fatcatsoftware.com/powerphotos/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
