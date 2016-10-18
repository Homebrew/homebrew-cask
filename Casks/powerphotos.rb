cask 'powerphotos' do
  version '1.2.0'
  sha256 '427d04824d81b226fc24ac96a79f6791a1aaeedc97d50644a96cea419216983a'

  # s3.amazonaws.com/fatcatsoftware/powerphotos was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: '83cbf88807e12c99450f127f83d9448d1dab62eae02919f16fecb1fb3814aa24'
  name 'PowerPhotos'
  homepage 'https://www.fatcatsoftware.com/powerphotos/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
