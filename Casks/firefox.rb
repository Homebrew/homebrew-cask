cask 'firefox' do
  version '51.0'

  language 'de' do
    sha256 'e36bcb4ecabefdc938226395bb63f9c49139d95d498d143726fad0c8ebe32dc4'
    'de'
  end

  language 'en-GB' do
    sha256 'bcef37c530c883be65885603e7b9b97ac8ff936bbaa1e869c159f181c4886b6e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cbd62ae943b69e89a67930940e4fe7a63052059537c3bb55297fe3b4488beab6'
    'en-US'
  end

  language 'fr' do
    sha256 '28cb8f28b414d020e6e34e89e71d70467cb181a8c2e020a9dab35c8baf422022'
    'fr'
  end

  language 'gl' do
    sha256 '50aab669204c6588848a14b0adce8e0ac0ccab0469ca1125f848c2926bc3c848'
    'gl'
  end

  language 'it' do
    sha256 '396d6398999c1f556bdde5046fe52da5a3e9e1496533f7c50bb68aa206821b6d'
    'it'
  end

  language 'ja' do
    sha256 '831242cc1219aad4dc203782cb4d97c8ba1f67b51c0635461abe94c8d02c9732'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '4dec8afccbed57aab8694de0789a646d53ea4af44577174526963e5efce1616b'
    'nl'
  end

  language 'pl' do
    sha256 'af032492244663a0d05445c0d310b5723fad28e6c8b5a22ba5b248183b6cf539'
    'pl'
  end

  language 'pt' do
    sha256 '4f437dc56ee642c9d2280dc46bf27c9c7f9f793ba14829f429696be948537a34'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9a9eb5620de270e9e7dfd673d1bdfa3b2da6507859e0053a23d76afbf3960f3e'
    'ru'
  end

  language 'uk' do
    sha256 '3d30a254c8d1ce683c27c8a9ec935abc4899824e33069f22738cf4f2e5c6c7d6'
    'uk'
  end

  language 'zh-TW' do
    sha256 '18b289646cd8ee8624c0dd1b4934e5a63e627326fb2803eeec0a1fc23e3182ed'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2ddf318020be30f86e19280f9c648b9d0890730da01923ef13e86d7e400251d4'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '12ef073656ccb6d1ef93ac046687627ec542611c5d272e912d1706b5e1010efa'
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
