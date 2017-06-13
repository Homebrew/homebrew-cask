cask 'kotori' do
  version '0.23'
  sha256 '5580ff12ef4233dcbea8dc797ab5008ca53b97236831e5d4861f755dab533300'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: 'a5cb9f6f791624e6f4c2ab5f5e30760b6f0cafb0fdd3a23f632a9f049196439b'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
