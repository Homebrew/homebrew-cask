cask 'kotori' do
  version '0.25'
  sha256 'd834a47b864cda419f9f778a40c82c3c7a01cc0d802999f0ec5de614229b81f7'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl*'
end
