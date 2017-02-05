cask 'powerphotos' do
  version '1.2.2'
  sha256 '5d88d7bb8164c700b64ba22ab93ada0309a548ecc1a80f2ad2ca1d797fe07b76'

  # s3.amazonaws.com/fatcatsoftware/powerphotos was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: '5f7b2f3a82cd8910441231320f6d3c631215c97245a6a5fd6a24da3abcb4854c'
  name 'PowerPhotos'
  homepage 'https://www.fatcatsoftware.com/powerphotos/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
