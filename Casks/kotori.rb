cask 'kotori' do
  version '0.14'
  sha256 '8ce83290e6705b32c285308b376a3f849675c3ff0f91b5c4448a4b4a6b1e79e8'

  url "https://github.com/Watson1978/kotori/releases/download/v#{version}/kotori_#{version}.dmg"
  appcast 'https://github.com/Watson1978/kotori/releases.atom',
          checkpoint: '10dddbf3e6d44d33b12a6b02f2c4336a6a4036cc09cf3c6166062684b22b9d04'
  name 'kotori'
  name '小鳥'
  homepage 'https://github.com/Watson1978/kotori'

  app 'kotori.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.cat-soft.kotori.sfl'
end
