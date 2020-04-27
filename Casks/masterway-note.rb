cask 'masterway-note' do
  version '1.0.0.84528265'
  sha256 'a6e92d580121dc74c96c3392f6e5c4e11fb08fce73a5b4f0368726fa1395be60'

  # prota.oss-cn-beijing.aliyuncs.com/ was verified as official when first introduced to the cask
  url "https://prota.oss-cn-beijing.aliyuncs.com/downloads/#{version.major_minor_patch}/%E5%A4%A7%E5%B8%88%E7%AC%94%E8%AE%B0-#{version}.dmg"
  appcast 'https://masterwaynote.com/mac',
          configuration: version.major_minor
  name 'Masterway Note'
  name '大师笔记'
  homepage 'https://masterwaynote.com/'

  auto_updates true

  app '大师笔记.app'
end
