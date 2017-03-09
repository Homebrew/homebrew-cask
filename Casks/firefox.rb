cask 'firefox' do
  version '52.0'

  language 'de' do
    sha256 '3e85cee46ab5d10696c73cc901b7cef2064979b50dc364fa59300c3e6d8e6e4f'
    'de'
  end

  language 'en-GB' do
    sha256 '4cd427d491edfb7a3ec3e1b9793dc87a02deab474c496cf2270b680b837b7130'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd753336be2e277a4671fe348d291fcf5a53957793e66e2e21134cfa779e9fe22'
    'en-US'
  end

  language 'fr' do
    sha256 '3a8589fa4afa96bf6e3389cc7467290b075bd389c288f84d7815069ba4dc7693'
    'fr'
  end

  language 'gl' do
    sha256 '8f59c2d7d9b2876b13e184e86254fcbac873ee9fd0bbf8d3836c49fb366503ec'
    'gl'
  end

  language 'it' do
    sha256 '97850e74d83e8a998c4448c09d6092580430d9a2aa041c30be0eff2868ff9879'
    'it'
  end

  language 'ja' do
    sha256 '5649dfa21bab357eadf7078841aefff4f7ccabeb9ef1b3ab1dd1f810adde3bfb'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'ded743271d41b8f754264f2414b54f179a637b1cb3a8d314a016fe4a0b53f6ac'
    'nl'
  end

  language 'pl' do
    sha256 'e50737f7602da0520f31985175f410689634214e691a9bc425e9dc6a0699316c'
    'pl'
  end

  language 'pt' do
    sha256 'ff556198b4f77d9f6870e05f143f1b50f8c74e9118b3fb1b4892d63f06b10fca'
    'pt-PT'
  end

  language 'ru' do
    sha256 'fbb94561bbda26131e16a2a7888c7224da43a6df708963b5806f125d2a3d47fd'
    'ru'
  end

  language 'uk' do
    sha256 '4343fba50c4955b388fd716a7396483c689a57d07067ea8301a45b871e849215'
    'uk'
  end

  language 'zh-TW' do
    sha256 '19c4ebea490c3cbe3e3298de8dde549a7d63a5061815e19625cb29f818903bec'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ea27a0aaeca57a6b087733854e797cb2f982ac1e842e350fa96b9f57b567e45a'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '98b72a3ac12ef87b8274b37135e2e7d011bca36d6bcfefa711fd80739d0001eb'
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
