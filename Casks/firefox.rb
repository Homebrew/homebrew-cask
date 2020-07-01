cask 'firefox' do
  version '78.0.1'

  language 'cs' do
    sha256 'a98b9fbd811dedeec75f8d9107e9743df6054732c7f325571f8ad06075e42601'
    'cs'
  end

  language 'de' do
    sha256 'bf1645a063900a98b1a2dcb444a96e5cad0d38f86acc46695aade2a3d26a9f4d'
    'de'
  end

  language 'en-GB' do
    sha256 '948d77ad3d2dc29c77ce7b13e74a64b82bb3b207fea81733a1f453fa181400bd'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9e53e7f712cd209902c479c6f966944b5dbae38a698ad6232f6eeb51f2ff0f3b'
    'en-US'
  end

  language 'eo' do
    sha256 '45a4a4a53d7249f745a9f9dbbcce343f1c79a5c366b522c8e5f97999d227bbc8'
    'eo'
  end

  language 'es-AR' do
    sha256 '623bb8628427fb52df26b737be7ae62ec54cc2db5dc349fa0fe851d6c67f5579'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '2e497c71ae079a65cd3beed3439968e0b84aad4a0e50b020db6690621f35fc0f'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'dde3558ffa019a580aac54e438bf947fbe31e709fd2a391c6e2afbd8f31dee14'
    'es-ES'
  end

  language 'fi' do
    sha256 '217f10266e0bd5395cafd30c13c7874dca28d359649269d3f0298a361b263b47'
    'fi'
  end

  language 'fr' do
    sha256 '99d22159e3dfb02073902178a9bdb7f62d982c1857fcff6f20b9b418c81d1e9a'
    'fr'
  end

  language 'gl' do
    sha256 'da4a7873c72a5484e46364850241cfb6ad14c0b208857f119dfea7e7293eb643'
    'gl'
  end

  language 'in' do
    sha256 'dcd00d43776b72805c1192f30c6c1a87cb29dfd8cb45aa52dbbba82704a7fb68'
    'hi-IN'
  end

  language 'it' do
    sha256 '98058d70c4a30d6f3820a7cecd322c886b7839d1a4c67470cbc744dce9f48ebf'
    'it'
  end

  language 'ja' do
    sha256 '7b976b100bec6d0ed1021260119bd4bea4c23b0307fabc32de17135e46819fcf'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '2d7e113c5eef35ca53bc72fc5c464f5b8c18bc39bd1af8532171e48c251d8c7e'
    'ko'
  end

  language 'nl' do
    sha256 'fc9569195c53563aa962b66b73470b5091fea03d837f9d3e713ff590630ca372'
    'nl'
  end

  language 'pl' do
    sha256 'f92be73ecad383e6d426f20f809671165eb617919cbf154a05e73bdfc6989d91'
    'pl'
  end

  language 'pt-BR' do
    sha256 '2b43013dc74e9b4c7d97617daa3751c2ee598500613c1a5323b87f7b522b699a'
    'pt-BR'
  end

  language 'pt' do
    sha256 'b66df94914515a21421d4b12a786dc374fe9d68386fadc829257bfe21ae86d82'
    'pt-PT'
  end

  language 'ru' do
    sha256 '126e067e0b5c4f64f4d92314d8c2f0a08fc85879afbee4ab3cb34c52fc1a4d06'
    'ru'
  end

  language 'tr' do
    sha256 'f5301d9ea9f09f78e03fe2f9f7d561fdfb3646498fbce42db6c284fe121e0c19'
    'tr'
  end

  language 'uk' do
    sha256 'e2dcf7004e0ded90b2c9f5e2edce0671718cdf2d99a880cd465d99fbd3619813'
    'uk'
  end

  language 'zh-TW' do
    sha256 'da54b858896d398f2470b2451b06e5bab843dcde90a9938d4b41991072024812'
    'zh-TW'
  end

  language 'zh' do
    sha256 '6892b700d44bd5b5c82bdc2d3e3a155fa58b0570f9e5c3809dc4586e477a0a6d'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
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
