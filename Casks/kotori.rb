cask 'kotori' do
  version '0.19'
  sha256 'bef610e408a529107b0c8f7fe0033d419ac62854a31de46d79e8764926c3052f'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: 'f09a8da6c45613b3432cf28e0eec6b49493bbd3cb11adfd3bac97cfb57b9d189'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
