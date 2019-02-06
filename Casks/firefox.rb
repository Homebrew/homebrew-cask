cask 'firefox' do
  version '65.0'

  language 'cs' do
    sha256 '21869283ed037c5ebddb66fe73012caa2672ebd51c16527499a9557d4b5ca82f'
    'cs'
  end

  language 'de' do
    sha256 '5283142787a9b37f6cdb21e855f167efb5203b644f150ad1fc857a73bba9241e'
    'de'
  end

  language 'en-GB' do
    sha256 '8519e7283eedf7f59be1f3d2be8c6227a89f59bc9cdfc23e87c6bda261994e82'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6175e0b96e452696ea0263d13faf86f038476d9bb6a5dd32288e8c3c44d3c115'
    'en-US'
  end

  language 'eo' do
    sha256 'fe40a0eff90c757f01ea8ffc28402e753600c0d199f95a6720831c0bec018bac'
    'eo'
  end

  language 'es-AR' do
    sha256 'f113049cb9434b243242eef216987669cf70abf59fab9c7d82c45c69d714547d'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '8c252c4f94ab9cd1ab68fcaf6c4fc8c1256d1d904cf12c9698cc0cd5d1f81879'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '80e56627e3fa8919cddd7997b32e6cdbecefe630ca39cd09589a2128dcf0a945'
    'es-ES'
  end

  language 'fi' do
    sha256 'c16e7a0c727603e781fbf6e9c59095f20776f786bd519ecc1191cbc82f961aac'
    'fi'
  end

  language 'fr' do
    sha256 '2ca84c20f3584d9a52b59b42221396e056696e14cfac0c6f3e5f47fef8a12aa5'
    'fr'
  end

  language 'gl' do
    sha256 '42342a484a243978a86a83f7889705e7ba634e58b9c7a6232b1303a688054788'
    'gl'
  end

  language 'in' do
    sha256 '4828aa62fd992c6f92fabb2c4b2643a169228b17b41ba26ef0eaa3a33a5da986'
    'hi-IN'
  end

  language 'it' do
    sha256 'f240110b9ad2491b6d6dcfee33634ac05b835637cf178cdbc83aa9718e24ae73'
    'it'
  end

  language 'ja' do
    sha256 '1404b11641356a8097e98a508173611b1981f4ee4c66300c6471283f17510014'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '4fa27bc3b7190ad305a2a62583ace96a15e14db5a9afc4322ecf4507b53eb220'
    'ko'
  end

  language 'nl' do
    sha256 '04bbfe5ee0c79b09b7a0db77084fae7599ef44d44ba270922b7a5091ad2e9d1a'
    'nl'
  end

  language 'pl' do
    sha256 '97d115a9d3f86b35ec640c7a9dc8943d3daf4a28bd0befd1440b2b098d088d40'
    'pl'
  end

  language 'pt-BR' do
    sha256 'fcbba25703722f510a1359c8e82de74f8b3ff7d0c076379d8087cba613af1862'
    'pt-BR'
  end

  language 'pt' do
    sha256 '650276cc33e9292a62c146af052c1ab56b98ebef65bb9f44926f283f94d5780b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '7372df8df2f4a48c8c31c4f0e9729a18ffee5f535de9e6c7992d49dbcf5c75b1'
    'ru'
  end

  language 'tr' do
    sha256 'becc6cfccdb1af9e217427cff9216a3d597049178ace41122e2064de73da526f'
    'tr'
  end

  language 'uk' do
    sha256 '312dbae6b5f47cff9d78769ea4cb82ec5d6c88e4e247988f23c5e93f99e03495'
    'uk'
  end

  language 'zh-TW' do
    sha256 'eb04b97c5e6ab5486d577188ffc1256104d9c18bff7f6e645869affe3f5034ea'
    'zh-TW'
  end

  language 'zh' do
    sha256 '85209a167851fb73881f77a223ac4f4fd848e9e966d57959cf362dfabba68802'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/en-US/firefox/releases/'
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
