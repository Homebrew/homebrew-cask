cask 'kotori' do
  version '0.22'
  sha256 'b8fbb9e7d35eb85ea82db0ebda6b491acea063d95e8475b412f2a65ef6bf3786'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: '5707982aa7fa0e030f1cfd58ad975da1adb6d49e32b1f97b6db9ca1541128f2a'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
