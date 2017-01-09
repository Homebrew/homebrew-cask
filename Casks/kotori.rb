cask 'kotori' do
  version '0.8.2'
  sha256 '3e76408fe54a6ba655a8098449d93e1a49a88c1df02e7939a8fc242fa53ecb98'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: '31d72cd441e108f5e2c56c302525ec6c74ff069fc61734f60bd0f3337dcc6938'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
