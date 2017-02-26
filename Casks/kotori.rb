cask 'kotori' do
  version '0.20'
  sha256 '719f7a87f72654c1760787ec998665622f0b48bddb033b18d7eaa9886b5505a3'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: 'b68136ca01e145656496a64bb64821b8f506d6d34f9ec14b48162a93ce8a1594'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
