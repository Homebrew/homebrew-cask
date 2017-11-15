cask 'firefox' do
  version '57.0'

  language 'cs' do
    sha256 '54d4e5c1b2f8d5f966067cbfccd4d9c6331317d3f58c96a003aa91c1d21fb01e'
    'cs'
  end

  language 'de' do
    sha256 'a42ff286ca358367255e34852d68d5b339f208b78aab0dfe6afa63c7f0d88c27'
    'de'
  end

  language 'en-GB' do
    sha256 '5f15afa4b05342fc2fd46c9d699909654703ec1080b882669d09718ab2de62ed'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ae83fcb9c2651216d9bb73df1e605c9f0a10b35eb2d586753b124dc425468baa'
    'en-US'
  end

  language 'es-AR' do
    sha256 'ea3e8cc182a9052addc3b89625abf0f0f04ac2412e0c5a9ba876c5e44423a18c'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'ac280d2021cd60f1abf7981cc970c4011ba66995a4d821304958d06ab065ec5a'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'c790fc14010f7150e81d5ef718efac798f94daa3b556a7e6a15e3660a340abd8'
    'es-ES'
  end

  language 'fi' do
    sha256 '599b0cb4cb069b7648c355fe7de28525df0fbfe9fcca8105c9d2225be77ee435'
    'fi'
  end

  language 'fr' do
    sha256 '830b3be5e7a454e9ce26713efe98f30c56b3d6f1893b05c77fd785eedf3e6eb1'
    'fr'
  end

  language 'gl' do
    sha256 'e40a92c493c740cf93e55c395b0cd760355f685be243c785e5325347795dedb5'
    'gl'
  end

  language 'in' do
    sha256 'a2f516a0f8a72ce1be908f2a32308645199f1459dc2fa37f19b3ccb5c1cf30ce'
    'hi-IN'
  end

  language 'it' do
    sha256 'c1fa1b06639cb6cd23171706b6a6cce8ba5bf2ff4eeb98dfd3ae8927aa674c7d'
    'it'
  end

  language 'ja' do
    sha256 '7a784410ae55352a2ce2d369a10148cf7b6a7893f31fef2c15c271f33fa0a6a9'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'fd9cfd3efd0572000cade085faffce1d242bb3f666684e0cf239db9634290c85'
    'ko'
  end

  language 'nl' do
    sha256 'e8f55c5420dc41c93fa271b1df33e2b953977dc4d749599fd710909938ffecaa'
    'nl'
  end

  language 'pl' do
    sha256 '8b94ad9fe0c2070f560dbe5c00af858b4e2980d07e1d9550eb7ffdd7b0a7298f'
    'pl'
  end

  language 'pt' do
    sha256 '3f36c5350dbd77e6818edfd246c7ee277d5d0210a1f87221d3020bfd2651edc3'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'f19c98e89dc68422bfa8ca46f0fc77c61a6177a38240f78eff05276cde1fe69c'
    'pt-BR'
  end

  language 'ru' do
    sha256 'b44846db8c51619a4560a664679132b4de29757c65c2ef3b9e7f3c85f8acc109'
    'ru'
  end

  language 'uk' do
    sha256 'f8b26f8b89421742d0803057e033c547f649513710d3450b37dad4d36aec1327'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8b8e9b5f0ded49d53608d8722900f3902f583e8df11321b06db0142aa7ac307a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2a1399b2d2f7aace57ffe2857e9d1b6700ed127e90650a6637a1b96419110ac7'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '51b8b184309bc940e83e9a3783a58fa8c21e30c43007f749de64fffcb9896af2'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/firefox_*',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
                '~/Library/Caches/Firefox',
                '~/Library/Caches/Mozilla/updates/Applications/Firefox',
              ],
      trash:  [
                '~/Library/Application Support/Firefox',
                '~/Library/Preferences/org.mozilla.firefox.plist',
              ],
      rmdir:  [
                '~/Library/Application Support/Mozilla', #  May also contain non-Firefox data
                '~/Library/Caches/Mozilla/updates/Applications',
                '~/Library/Caches/Mozilla/updates',
                '~/Library/Caches/Mozilla',
              ]
end
