cask 'firefox' do
  version '52.0.2'

  language 'de' do
    sha256 '701b391f93dcfbba2c72e16d9c67708c73510990c49e2c0c30ddcc5c41613a05'
    'de'
  end

  language 'en-GB' do
    sha256 '9bb88b2979ba200b104243881c4514af0ea72477c46163ecac4164f92c646203'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f9a91e0d57652566ba7f0d2e191cdc3db3219b3cf29a83ed145a9110a0bda108'
    'en-US'
  end

  language 'es-AR' do
    sha256 '381461c4c455c2abd3e2be2fc8539008116e342e969e3ce4bfbf03cbecb39f02'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'f6b6e21ca1162779373aeb1df2506fb87fbdb143e7044107cd9723492852a1b1'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '625dc19add492dd8af0d45d01d39136eac176d412006e2ea40e7b50e0bc30e62'
    'es-ES'
  end

  language 'fr' do
    sha256 '495400b3d422615321a828177fb8e490c6e24799f897a6823deb9eeef923dfb1'
    'fr'
  end

  language 'gl' do
    sha256 '7c1e94d95d674d99a114d9076abab57a662c130fd8e3670493b80e7e3a0103fa'
    'gl'
  end

  language 'hi' do
    sha256 '7ba6ac4bf822717f739eabdab24011cfd4e3113f095ebf61dfc292fec349602b'
    'hi-IN'
  end

  language 'it' do
    sha256 'caf2b2677fe6c6d8b4a70eb0fa72bb8f4b065183f93ea52b37d77c1013947e00'
    'it'
  end

  language 'ja' do
    sha256 'c3d2e90673532d5496e522462c0b67110218a1d15ee1326b8f467e0d479c7f96'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '176aa2288b1a5f54eb02fa8494dbc9b58bcde0cd2291fc81ff48f6c277600eb5'
    'nl'
  end

  language 'pl' do
    sha256 '062be41bdcb068ca4ac3f19de01922f2def57b9803463a3fddd7a3260ada7a15'
    'pl'
  end

  language 'pt' do
    sha256 'b479994e34013af7f22f02ba05907c55efb5b6f88e3459f9d685d72f95a60b9c'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '5b4fd2b167daf37b84ee76c5f520f586a11a78e57b84c8131c97500a30b64d54'
    'pt-BR'
  end

  language 'ru' do
    sha256 '87223ba61dda5dfe7a9d5cc995a6dacd4affa11a2dca034bd858504dc0013519'
    'ru'
  end

  language 'uk' do
    sha256 '512df0272fa465d73fdfb8c6ce48ba228470aa5ce0978ebcee3979d753c693c4'
    'uk'
  end

  language 'zh-TW' do
    sha256 '232566e97a43a817e72662ab8b9d39dbd1effa14066855f12494b6f3f3fd1a80'
    'zh-TW'
  end

  language 'zh' do
    sha256 '547e6ce2fe07a6a7bb69c16dcd10c201c2565a02a303ac8f2f36ea3e88ab1a1a'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '05f68e4eb0a98f23df9d4050ad9bc8d9720e2d62cd27646641d8886edab0344f'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
