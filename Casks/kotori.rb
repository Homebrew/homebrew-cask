cask 'kotori' do
  version '0.12.1'
  sha256 'd436558722b35e8e86b24e67ea9e8655c3db238b8b8ecf2126c5b14952ad1550'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: 'df12b61dc857c7834a150e912cf8175f5925e61c89e516a324abd0e788ebe9e9'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
