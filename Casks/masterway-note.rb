cask 'masterway-note' do
  version '1.1.0.88242909'
  sha256 'f6a7e718f7f1c18dc5302ee1f9b320b9ef64d926dc2980f470529cd948c819c4'

  # prota.oss-cn-beijing.aliyuncs.com/ was verified as official when first introduced to the cask
  url "https://prota.oss-cn-beijing.aliyuncs.com/downloads/#{version.major_minor}/%E5%A4%A7%E5%B8%88%E7%AC%94%E8%AE%B0-#{version}.dmg"
  appcast 'https://masterwaynote.com/mac',
          must_contain: version.major_minor
  name 'Masterway Note'
  name '大师笔记'
  homepage 'https://masterwaynote.com/'

  auto_updates true

  app '大师笔记.app'
end
