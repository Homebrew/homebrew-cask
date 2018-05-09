cask 'firefox' do
  version '60.0'

  language 'cs' do
    sha256 '91d09f8af809d3be3b2d8df94afc3b47b795404b2ae48d36cd7f405b31d84d19'
    'cs'
  end

  language 'de' do
    sha256 'cc70f22dac657f4cdbce29c468f621a245ce06a1c13ee44da2049a6fd35537eb'
    'de'
  end

  language 'en-GB' do
    sha256 'f5ae3c4df41476c0f29dba14906270e9d93a471da22c8cdc0d3821e296651fd8'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '1e9145ee978ebd8d1712f48aae4cbe016ebe68254141b978061e240474bcb2ea'
    'en-US'
  end

  language 'es-AR' do
    sha256 '5e8f77e80fcb04e0eca87fbddaf7967fb66a4f4a2d67cd8479ac0510f5466387'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '682feb3bf490322fd1298563db77745b4fa2a01a9e7fe02a4155346ceab67240'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '1c7188e09154bf2cb062618fde50f8ce0ae148e528a0f59f035e7c3e50a70082'
    'es-ES'
  end

  language 'fi' do
    sha256 'ff66186c5ad67c2d994753f37251ace07d17bc9514c45fea6476581a551d2602'
    'fi'
  end

  language 'fr' do
    sha256 '79b15eb6f323a5fab4e1dab343c771d9cc93428b1f810487b0cb254d14e2c796'
    'fr'
  end

  language 'gl' do
    sha256 '1e726d6180b5531acd799eb9c5e9d488444b182c4e55cc94903f357b9e02999f'
    'gl'
  end

  language 'in' do
    sha256 'c0bd13d06bcb3f3bc31833c5296958f4ff60410a6782afd905111e2fcf72b568'
    'hi-IN'
  end

  language 'it' do
    sha256 'fe002ddd513a2b726d8b910d43094bd89b5297e41a7d8c9fc952913fc4ea24db'
    'it'
  end

  language 'ja' do
    sha256 'd9102a642a9051530c2bb5386d5cdc83d79c924d9821f528a7681d55aa7a20d8'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'a42e889e7e5914754e05749dd74547f46ade424f74e7eefe1f594cdf5ecc572f'
    'ko'
  end

  language 'nl' do
    sha256 'a33a3f01cf68ae44dafd54d94e4fee00aa20b55204831d1f90d91fd90103e277'
    'nl'
  end

  language 'pl' do
    sha256 '45a5afd1164b391074b1c9ae9852365f3108463dec436771c20c0e1092163ab7'
    'pl'
  end

  language 'pt' do
    sha256 'eee2561fd32f80760bb4ca0e3fdfee32e9478468a3b23d8eb393b68b43c95712'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '9d3cc85b7aafea8f6b39cc1dcacb219c43b9f354c55100db2a74e954a5e2c491'
    'pt-BR'
  end

  language 'ru' do
    sha256 '40003682b2d7810e367e7ed22ee676e95ebfe7c560d610f2699265f5871da059'
    'ru'
  end

  language 'tr' do
    sha256 'fa125580947e5300d267e4f0a39ed4335d1fc138c91a67a9470a7c5e8a56cc6b'
    'tr'
  end

  language 'uk' do
    sha256 '96ab8ecb8464cf841c31b23ff3fd4e8d0687b0604c0bc25b7f65ff0876e45731'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8820bc523a583e538f46e3554cc3f1e8cb47df001d5e29c341ca5d6c21bc70ba'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1b8678b4765ed4e33d390966a48cfcd9db7bc2ab2332e2bc7fc3a71745a8bd8f'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'bc3c40e5ffe29f70e35ddd2065dccee892b89a83a286fb0d551f646597226b46'
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
