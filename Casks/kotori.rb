cask 'kotori' do
  version '0.7.1'
  sha256 '4b4c9046688da1060cb8b903360c948a116e3f143600cd4737ca4336c22cd8d8'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: '3d44afabece294d10fc675784c7ff2cbb1ff4f4478558d341c208d16cae551b4'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
