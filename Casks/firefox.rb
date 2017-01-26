cask 'firefox' do
  version '51.0.1'

  language 'de' do
    sha256 '34798d55fa1484e14966d89dce7bff2cf9b69d90ccb476dab2ec5c3534d667a9'
    'de'
  end

  language 'en-GB' do
    sha256 '27219564f5164941b002b8a3e0abee380b5315d29e1ea4585de16c276b43d001'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4b8edda773a93cba293789c2be1b1687fe309dee91589f9d2a9a71cc2c1bcb1c'
    'en-US'
  end

  language 'fr' do
    sha256 '04d8d282282ae8d45f3977d71b0a62cdbdafe06e292a6f919c0abf0aeda186bf'
    'fr'
  end

  language 'gl' do
    sha256 'f9cf24384cd8c436d7e85aa43e10a00c0acc846b920d69fa7095cdcdf476c809'
    'gl'
  end

  language 'it' do
    sha256 'eb9fddaa5d202fa5e10e54e2b98a36bb7359dabd26b559d8ade803ac49bc82b7'
    'it'
  end

  language 'ja' do
    sha256 '593ef9c8550b98a716fdbd71d7ec4da0a57e7ae21af7ba9f8e892a9d535739c6'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '7a1b1a89fb2e5a96463627a67533fc478a45ff49ff2b832b1de0680bdacd39e1'
    'nl'
  end

  language 'pl' do
    sha256 'c3c837e6dbc51f798e20fb804118c8510521468e62be30ac32290da9b8e4853d'
    'pl'
  end

  language 'pt' do
    sha256 '709c83f1804c6fb42ebfa16e0e329d5fc5b1c7ee053c8b597c288fce59e3104d'
    'pt-PT'
  end

  language 'ru' do
    sha256 '936a0120c94ed9047a63e16e0ea62be237026c1009c69285b9882700ea85bb5a'
    'ru'
  end

  language 'uk' do
    sha256 '54335bfecc7036860d64be78879466ddb8894c6f6d71b71fc8b57470883f13db'
    'uk'
  end

  language 'zh-TW' do
    sha256 '452150ec8b7eb75eeb85cc7d4e43984eba17f0ad2712bfcd9f70c75f69141bfc'
    'zh-TW'
  end

  language 'zh' do
    sha256 'c702de1c043bb92dadfa34e621cf002af33a7a8068a5fa2ddcbed59703a87115'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '622431420b64d1c42a42a67bc376d4dc135e165041ded68c396bacdc3654e43a'
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
