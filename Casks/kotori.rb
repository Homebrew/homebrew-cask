cask 'kotori' do
  version '0.24'
  sha256 '02b2cf71d5ff4138a768781c920232ab905d852e20b3db0e178c3d611f640636'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: '32edd1fe702bc3121a92ce4cdad6152e25c4064e9494d9eeb47a89450e9f2cad'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl*'
end
