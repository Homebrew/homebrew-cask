cask 'kotori' do
  version '0.7.1'
  sha256 '4b4c9046688da1060cb8b903360c948a116e3f143600cd4737ca4336c22cd8d8'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  name 'kotori (小鳥)'
  homepage 'https://github.com/Watson1978/kotori'
  license :mit

  app 'kotori.app'

  zap :delete => '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
