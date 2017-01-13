cask 'kotori' do
  version '0.9'
  sha256 '1a17e0533e3b5d5e058d97e885c12aac72010560709633d14e03563e6918706e'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: '0df183491e5ea68c86f8336950d8d1bb5c9f1dab7c9c468d6daedb8b227dced2'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
