cask 'firefox' do
  version '58.0.2'

  language 'cs' do
    sha256 'a173bbfdfd513e3f5d770795a56ef692c0195f2bdbd7da7fcb87b748a62f75cb'
    'cs'
  end

  language 'de' do
    sha256 'a4072b91212384329fa94f990bdf47254261b5bad33a59382bd5ffd2563c08ed'
    'de'
  end

  language 'en-GB' do
    sha256 '0142019ca0b305ba53f8c443cfcfb3766612906408e006f05f35349148d26c12'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd30aa9862a8adc21e98d447bfeb3e50d40cbfc5aa3f9a8cdd2502a8e4c8b6c47'
    'en-US'
  end

  language 'es-AR' do
    sha256 '569a7489a1e355ee907a42dbf137b9f61c4ddb0bb08da87230f69de29720714a'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'b13475629987708d5a325eade3be0b293980130599b14434f00ccd9c61e0c783'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e2ccb39dbd872ef53c65e61623defd405e0e037c50791ce002b5fee93c1cda40'
    'es-ES'
  end

  language 'fi' do
    sha256 '33144d4b7d16b0699897ff4127f751fbc1778b1ac20a7491bdd1205174d49fcc'
    'fi'
  end

  language 'fr' do
    sha256 '859726131d0113ea010914d8a23bd0834f50f8421422290da47159ce154ad842'
    'fr'
  end

  language 'gl' do
    sha256 'be30da806ea61220b74aa76aa3175d91f437dbdde60cf1644908767ac61eefb9'
    'gl'
  end

  language 'in' do
    sha256 '89c6f958b811fcf74477e73e6e0e84ac8417a80eff3eeefebcd2c3b80770a355'
    'hi-IN'
  end

  language 'it' do
    sha256 '4a82aeabf3cbc6bb75781bc05c51cddf9329e50411e5d0d685c32cef6c43b2e7'
    'it'
  end

  language 'ja' do
    sha256 '91b6c7851d181206a1b7328b35a962a8f5b38b9eceb00fef0b1f8c566846e0ea'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '9475a4323dec9712cadfd2b8a030c2a027bf3ca932b151b3ca89f88aa2d03a00'
    'ko'
  end

  language 'nl' do
    sha256 '722cb19caacc2c77064d1e7f8d454aad07a2e5dc1d8e4dc8c6d1e679f6ab7715'
    'nl'
  end

  language 'pl' do
    sha256 '8971dc3d42426736e5febfb0968c7866ac71bffc82a30f92abb334c57fe1ad6e'
    'pl'
  end

  language 'pt' do
    sha256 '9ac1e97ba5e0cb53baa67be83b3b080b20716c8ab3f07c7b22fee5d1850b5656'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '0ddcded3fb25949691faae821c7772333aa26eb529a3b376c7887677693927f4'
    'pt-BR'
  end

  language 'ru' do
    sha256 '3bab69b203e736bd2887817c4b1361a1a5bb416810a6559b9ee40dc97c054021'
    'ru'
  end

  language 'tr' do
    sha256 '3bbf801d7e10a38f6f176dc29101901e43ad32ab463e282742084c1c83d70153'
    'tr'
  end

  language 'uk' do
    sha256 '97766cab3686ec45c1077db9e8eb475f9425f40e521bedeee0c6b1726da73204'
    'uk'
  end

  language 'zh-TW' do
    sha256 'cb56bbc304733b1ab1a1b2a561d107568fc906b6028297f335117a99f605f647'
    'zh-TW'
  end

  language 'zh' do
    sha256 'de6614e62ed848080f083c299b8a0685c3c6faf58e0fc82876a8a2b095bbc1c7'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'bbdc283149077f5f20b512935e1a330ceeacb460bf7a38ace8391343b8b2652d'
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
