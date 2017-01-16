cask 'kotori' do
  version '0.10'
  sha256 '97fd88fcc8c64f6c2fe3e2c842889e8aee71beae5328a5888bf8d1f3b213919c'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: '5f0d2ced1368b6eb016df9be1a72b3a46be36b6edddb8d0015737052dbb05da3'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
