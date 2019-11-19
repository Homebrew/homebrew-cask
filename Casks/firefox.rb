cask 'firefox' do
  version '70.0.1'

  language 'cs' do
    sha256 '143349a3805f2809d55d945283a7820e9d3affa5e502c236071a9d3cbd88eb7b'
    'cs'
  end

  language 'de' do
    sha256 'ee60091d465160ef8a3f5eeca97c110dbbb17bb97c58e465a942bf54574ff9a5'
    'de'
  end

  language 'en-GB' do
    sha256 '9774962e0e83ce7f908508202ab2155668321d1089003ff5986b35b52b97a5db'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd0bd62e9b57062e3cb04ac05444ba3856d2c1fc5d4f079eb4233a3053d1c1bb5'
    'en-US'
  end

  language 'eo' do
    sha256 'ce0cbdae7c4154840bf49b9072b25b4d95aeca85c51d8023b2fa14cf673d8bd3'
    'eo'
  end

  language 'es-AR' do
    sha256 '742e1ff104651028cd316e4e622209b4a6e0ce1f10522272a14164e4aaaf5800'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '4cda7c5d5127c6e769e863949a96cdbecbc8f7d47b0792a876f1600bbff094e8'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e2b2979e742a2da3d5c785dea191a4ba2e3ea31dd690482225843c4fdc5f0072'
    'es-ES'
  end

  language 'fi' do
    sha256 '3c8bca1db31b491cfb369be8a8c7eec0cfe87e0c28b016a3b26886a95c2efb5a'
    'fi'
  end

  language 'fr' do
    sha256 '0bf7618b7ef8b42451c12f1a2385a0430e358c607321af2316eef7512fd75f6c'
    'fr'
  end

  language 'gl' do
    sha256 'f9ed710a803dc888ce53556d6cbb1cf71baff2a8c8b93896e3bc0751e2281acd'
    'gl'
  end

  language 'in' do
    sha256 '8a2488fb6de3d0e46b55ea45932f9cacce3e54dd4e2f92e8508d59bc0391021e'
    'hi-IN'
  end

  language 'it' do
    sha256 'db7c8ddc37e72c3b7e2c6b6f4b13f7a2c7491d31982ad6b4333cf71be2ce88f1'
    'it'
  end

  language 'ja' do
    sha256 '7717f03fd219c02a81a63c487910d994b0d343e9bc34926d94a70844e0f3a60b'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'b19445112fb10e7fdc55b0748bda4a2665528a7fa35b9043b8423ba3d16eb062'
    'ko'
  end

  language 'nl' do
    sha256 '8e2ba42ed87270f6b1a5643257dcc7046fda7d8fb098fa01dfb16053b2e3eecd'
    'nl'
  end

  language 'pl' do
    sha256 '6cf565a668f4d370d888a3d24c641f9190888c09306534b9cc1d2e9e11b17845'
    'pl'
  end

  language 'pt-BR' do
    sha256 '810809d6f33ad8bdfb489a7b30af7478d19d37e8a6492659b4d15be55859e754'
    'pt-BR'
  end

  language 'pt' do
    sha256 '65cd719369e9f6bb0d4df8ea7f4c761178afa2810d1a2b05219d4a8bd1189aa7'
    'pt-PT'
  end

  language 'ru' do
    sha256 '08651aabc2ab968d9e9d79ed0b85161cdd63b6d94b32f848ef722e7a3d89d38a'
    'ru'
  end

  language 'tr' do
    sha256 '12c179b2eadcce216ccc8f8f2bcbe3e405d883595572eb8888309de065c7e4da'
    'tr'
  end

  language 'uk' do
    sha256 'b3563468f8bbf8a3985e9a694a52186ea13634a95cc7e48076540675201cfbe5'
    'uk'
  end

  language 'zh-TW' do
    sha256 '5f174dce293e01f692a4a6f00b9d8448287495ed58c41a8517be233c1fd285e8'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7dfc85cb1c79474a01d9bff4e3dcba3e23e171dcfe81e50535e85d25423fdeb3'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true
  conflicts_with cask: [
                         'firefox-beta',
                         'firefox-esr',
                       ]

  app 'Firefox.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox',
               '~/Library/Preferences/org.mozilla.firefox.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla', #  May also contain non-Firefox data
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end
