cask 'powerphotos' do
  version '1.2.1'
  sha256 'b69a97b5771ce2b7772adca381a0a584cdadc160cf520617e6ec101523f33925'

  # s3.amazonaws.com/fatcatsoftware/powerphotos was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/fatcatsoftware/powerphotos/PowerPhotos_#{version.no_dots}.zip"
  appcast 'https://www.fatcatsoftware.com/powerphotos/powerphotos_appcast.xml',
          checkpoint: 'aa291cd226bfc68e1443736d6015a4018bc75d1bec691aa7a5a97ec5ba704c06'
  name 'PowerPhotos'
  homepage 'https://www.fatcatsoftware.com/powerphotos/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'PowerPhotos.app'
end
