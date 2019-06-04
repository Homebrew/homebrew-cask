cask 'firefox' do
  version '67.0.1'

  language 'cs' do
    sha256 '85f43f9e2c4004ac48cca5551e7bdaa8fdbe748f51d4e1f8ba327cd2be7982a3'
    'cs'
  end

  language 'de' do
    sha256 '5d3e391a33b91016786ac3fafabc6ce12ed3fbcdd377164781bb846ab9981d2d'
    'de'
  end

  language 'en-GB' do
    sha256 'f5946d695739aeaebb3e7dfb873d8c8c7487ec78bbca80381b59875fbea498f5'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a740bf0d9f406c689135cf1bddf185ad7ed80b9af74e2387b87063fbbc0e20a6'
    'en-US'
  end

  language 'eo' do
    sha256 '50d485189481a6d600742949b2db11df8d79fdc03a66d344bf8c2871e2d317ae'
    'eo'
  end

  language 'es-AR' do
    sha256 '26d8c61c6ac11747533dfd75cb6f4fb155fab2e82a45606d3970b364d6364916'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'c061f70513d324651e98b9425b2a91c0990bfeb86be0d467f52a796ede227618'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '9e8e28edce41dd3f1b79b5dd2d4925cff49cbb798df698525b5639d7fcadc968'
    'es-ES'
  end

  language 'fi' do
    sha256 '1788d83551a39569f08a6d097a123e211d8d934c5cb833dfb94c678328139713'
    'fi'
  end

  language 'fr' do
    sha256 '27d17d200725c1aa04157917c4fa906721a7ef9b35d34cae4b2c0f85990f089a'
    'fr'
  end

  language 'gl' do
    sha256 '4bd4b23073d6b56a7edd47fb84caede82c0a4d35f5acbdc7b12cd531863f69f6'
    'gl'
  end

  language 'in' do
    sha256 '96e0e0f901ca7a09f0c16756816069b3553a9ee05efe49b70fc14f35c828abeb'
    'hi-IN'
  end

  language 'it' do
    sha256 'b628ec8005ae7294abeafbb69b397a40b9905588faab010b333e7dfeab0a4e25'
    'it'
  end

  language 'ja' do
    sha256 '491a3da8812e22968569d18087f61d7a27292eee3d71470b9bff01668d9dfef8'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '8341949c1e384d44982448467fc53224cc26070e4846e80c0800c9cd49e781f0'
    'ko'
  end

  language 'nl' do
    sha256 '09a7b10a17bd8fc0a6f5c95692e2db3eb1a9afbc96b5ed145123217d8084161d'
    'nl'
  end

  language 'pl' do
    sha256 '891c579c30773620752753f2efa33ee452c0cb6d56f6a9cf52418f06a286e0cb'
    'pl'
  end

  language 'pt-BR' do
    sha256 '724d7e0c914d074662db10e704a49c97ea4d6d0487ed3f8d92230ebfae62676c'
    'pt-BR'
  end

  language 'pt' do
    sha256 '15064b084fb28d2d07894e1f995e25137b778be15f35cdf9c9286c50a6a25c58'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1fd1c63496d120f5cdfba82f09c018d81f27cd61ca313c1b01d191afd2444a3a'
    'ru'
  end

  language 'tr' do
    sha256 'e80429b4f8a6aa49f75ef2c0fc234eb26f5035cd9276926675d4d602a0541c05'
    'tr'
  end

  language 'uk' do
    sha256 '55ade12b09a1283859488ab5a4412fe86f1ceb0da186734c3cbcdb42833fa628'
    'uk'
  end

  language 'zh-TW' do
    sha256 '38f402baf8d53df7e25a3adc992c14782eaeb4e9b5f33216a708b0353650b2fe'
    'zh-TW'
  end

  language 'zh' do
    sha256 '49015f352ab83a12e5982e3309ce1d7be0754485fa89a3c110f89eee73d2acf7'
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
