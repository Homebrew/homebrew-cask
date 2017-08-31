cask 'firefox' do
  version '55.0.3'

  language 'cs' do
    sha256 '0bf173540e57126cb67f5894b6740b767942b45df75c01d2ba80edef426c3d79'
    'cs'
  end

  language 'de' do
    sha256 'f3deafd0186e6cb5e098fbc47c7aa716ea0178fa67248c23af4e660e0bc8b7c3'
    'de'
  end

  language 'en-GB' do
    sha256 '3dbd0a67b9417abb85dce0690f05684b2c1fdec61f50959e4c5ba79914f2428a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f755408409f00ba6842aba4e849f5724883e974306a52fec7a12e4ed7a1b4006'
    'en-US'
  end

  language 'es-AR' do
    sha256 '11bf0e947ab46c96256c118bdffe953898c28f402dd2e53ae2ae3f7cf97e9a27'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'f5a70c533c960c9a8b0018b8ddd9f599349dd72c7724d0b084311a2c3c092d9f'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '588bc90bbd80a663ff9ffde52d5d2a49e1ad0a81825d8a24e71ab88138d1b4bc'
    'es-ES'
  end

  language 'fi' do
    sha256 '978a923746c11bccd86cb2bee2c7092f6a85b2a0f45a2d00bb745768b4fa354e'
    'fi'
  end

  language 'fr' do
    sha256 'a0a5f62ea17ff9a3d3f7eeeea1980b6498ae0bd9903d30ba0c194a5b4cb1111e'
    'fr'
  end

  language 'gl' do
    sha256 '2870f44579b38ca719ca8244755b20b3a5b324009d417dbef9036fb1902a694b'
    'gl'
  end

  language 'in' do
    sha256 '7ebc19a849cfefdbab1a3f37ab4c61bad3ab66459e72f4d90a7a1ac754fa40fd'
    'hi-IN'
  end

  language 'it' do
    sha256 'd2e1f7081cf06eb446185ef5d118e07678ee008454e5a4e0a449843360c535b3'
    'it'
  end

  language 'ja' do
    sha256 '3933c4effb8817fe3e5e128b1fa1764666bf1d1268542c5347c046a2fe211222'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '2236b5efa081baf728cb81d6b273ecaff687f3244ce12129f24ecd409d478e6a'
    'nl'
  end

  language 'pl' do
    sha256 'e41577eff091ac855567558919b704ab324e859335b68b1bf83172121ca4a4d9'
    'pl'
  end

  language 'pt' do
    sha256 '75bb300ca3aa1ae05c22747225c84ace67233b0543ca58f70d3e31c2e481adcb'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'f32ab08e2cd36fcc04c3607b016ddb42b4b3dca3bbac278d3da491d6f40fac09'
    'pt-BR'
  end

  language 'ru' do
    sha256 '79d709df85be0b51f05b1fada2451afa8e09668b6d67a28b4c8f55082769931e'
    'ru'
  end

  language 'uk' do
    sha256 '51849bf46ecf64d760354c8ed5694790df591348d25f567e5bf0a8fe030430d9'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1f750067ec9895c0a512fdf58018bf8997557a19508036ae74c0994f1cc43a11'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b8172565a5ff0f377d624031ac6454484add66e2304dfb813ac7f1cc89fd2fb1'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'c9e793554c1df2769716b9bf74d2fff8f9161a55e7f5cc90bcdcb28772d17fb6'
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
