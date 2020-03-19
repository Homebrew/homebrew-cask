cask 'firefox' do
  version '74.0'

  language 'cs' do
    sha256 '8d7140e85aec5382f78e4eabe88bd77a906ab2c79925878643eb52f3bc5793b5'
    'cs'
  end

  language 'de' do
    sha256 '0eebee775e9c4ccebac00912fd8a146d5bf60a3ec6a212eca1dcf7b765c173ad'
    'de'
  end

  language 'en-GB' do
    sha256 '2c147f74340f58245110dc63b9844ad03b0b2d9808fd7a4cd425312404b9d49d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f1884fda0ff3d5241ad3c04ca4c3a5afedaa23981123c62370bc98bd089bd800'
    'en-US'
  end

  language 'eo' do
    sha256 '8cfcfa89c565c9c555a8b669f29364d3a1653ed9f07557adc1a5036933a4cbc7'
    'eo'
  end

  language 'es-AR' do
    sha256 '71b6911a59e9f7404be3c6e7d1d6dabbf602b922725f14e9adf8a30167d52be7'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '16f39f22bf0ba1af6d26d4736bb28e40ea0f5ddcf0d1a67a0ae1b0e3b679a73d'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '968a073c6f96bf88b206ab1ee9d0060c360047a4478db5dccf1625599425bf3d'
    'es-ES'
  end

  language 'fi' do
    sha256 'f7b6a209c72ca79c42307d8f8b5f72e349f6f7089c0381e7a4815c85924ade60'
    'fi'
  end

  language 'fr' do
    sha256 'e88ac89958f2583d6a9f20953f1b8e67593d84bf5d0507732f7aaf119a4a921b'
    'fr'
  end

  language 'gl' do
    sha256 '7308ad903ce9310c2bed5fc566a16dd5131133dffd75ec96e685fe7c8bd9df87'
    'gl'
  end

  language 'in' do
    sha256 '82ab647691e73e2d4b6ccd15b7d216b274faa0ecddc31a2f965acd9497f5ce86'
    'hi-IN'
  end

  language 'it' do
    sha256 '1b94ae933404c7e721f995eb35941c2d904ccadf2de9453bceaa31733dddd033'
    'it'
  end

  language 'ja' do
    sha256 '12c4b5b9f507ddb0e923b9cd068f802b5224b1fcf1b051df1955022b345d6b27'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '16c45ec9fb768205266dbd81572f82f152f6f004e436d9cc76ad02ec7ca4c7b3'
    'ko'
  end

  language 'nl' do
    sha256 '3cf11ed7cb0eb00cfb122bf51ba6df83bf625c8b5a59e8509e7c6eb386ce737d'
    'nl'
  end

  language 'pl' do
    sha256 'bcd02d67c235065c2113e12444033598d9708c3b442b636f2c5ebf30b1942229'
    'pl'
  end

  language 'pt-BR' do
    sha256 '5b42b9dabae7e9ffbebb1c5e62804e70aabef3870ff382f6b2b234170bc01b93'
    'pt-BR'
  end

  language 'pt' do
    sha256 '4cfaa809fc48a491f0e4e872ec14012fca5721b3f042833389405c52abc4caa2'
    'pt-PT'
  end

  language 'ru' do
    sha256 'd18a62c28bd739ea63a041556087245e8f29dac5086186c5e92f89b8356c813d'
    'ru'
  end

  language 'tr' do
    sha256 '8b4e8355c2476b4c95159b93a9c8ecda31f996ab3f60c2eb35bb4c674fe02ad4'
    'tr'
  end

  language 'uk' do
    sha256 '0284371c15d1df6f5f788d570542506fac5281b8920ced2666071b2746f90bce'
    'uk'
  end

  language 'zh-TW' do
    sha256 'f3fe288915d56ce37bcc3efee76dec435aa6f204088000cffa4ab857caddb52b'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e2f30c6d5a79ac7d137925d009f013029316e748c8961ad2319c49076ae6c413'
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
