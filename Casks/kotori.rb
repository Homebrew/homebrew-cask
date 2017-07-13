cask 'kotori' do
  version '0.24'
  sha256 '02b2cf71d5ff4138a768781c920232ab905d852e20b3db0e178c3d611f640636'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: 'cede69926c796533f8b4d0c24887d9bf028ef7a3824d29450b3963e4ac52ed07'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
