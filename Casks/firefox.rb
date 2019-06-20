cask 'firefox' do
  version '67.0.4'

  language 'cs' do
    sha256 '9fd43ff8e6f8fd391dabc11c9b5014b62e5ba62df37bea5bbfadba3285e24376'
    'cs'
  end

  language 'de' do
    sha256 'd69d95fd6972f196b4ab1770b6160c114371961e00aef18bb55823ae189d4127'
    'de'
  end

  language 'en-GB' do
    sha256 '7abc4f0e3e3155999e0771039a7c35d2b53a63c0945de070ece73124b7961ed5'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'b0a2e2f1fdb4aa0949318e0dc48a4a966695bb1356d8523e4e4b470b29831515'
    'en-US'
  end

  language 'eo' do
    sha256 'f4555a85d8add9362f8442413944c1045c9fb83b9ea0a42955ebaa1a306cefbf'
    'eo'
  end

  language 'es-AR' do
    sha256 'b12bca00b227b0b5749d5ad60c956a8109c79cdb0a6eb7d4d13414ba17b15410'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '376eea5a7208bd8eed4e99ca626f920c59e8820baad388a4548c571cfc199584'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '86be6416f5acc97bcdf04f642901ceab3b8deacdfdfc8229d438e58bece10fb2'
    'es-ES'
  end

  language 'fi' do
    sha256 'fa4cb67dd18259f073932cc130b23ecd151a79e9d55f00702b1868766cf4d4d5'
    'fi'
  end

  language 'fr' do
    sha256 'feefd28b86d557912fee66d31771c98b8f12233214f1140a1bf343d8504bc042'
    'fr'
  end

  language 'gl' do
    sha256 '9f107660a0001a0bcd62a515570912e51fbca29ca011b6d83d03f105644543f9'
    'gl'
  end

  language 'in' do
    sha256 '4eface76ca8d21be339f50f5ce3b520ae95301ec8acd578da5b8264be4be57a8'
    'hi-IN'
  end

  language 'it' do
    sha256 'cd46da867b968dfb6c2dd13d947ff59f7558856837ae3661dc5bf8981040b202'
    'it'
  end

  language 'ja' do
    sha256 '81a86490a43f3402ab4600f4192781b96a5ceeeabe405d8c2fac064bec21d3b9'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '1f013a20da1657cb07bd4b72d07990ec8791dcfae5e8ca7fd00e612ff308c7f0'
    'ko'
  end

  language 'nl' do
    sha256 '7c89c5cb9c5cd5a43e49d70acb24f59f1784afa69acbe42e915ccfc1ee786e2d'
    'nl'
  end

  language 'pl' do
    sha256 '9cef6fd755f79db591047e75a77c4054053b1801bc468013521aeca4f6ec4ac4'
    'pl'
  end

  language 'pt-BR' do
    sha256 '9a5ad17f3183e73c0c01dad1ce05c336d8adb794b7d9bf17e377458d88f3f077'
    'pt-BR'
  end

  language 'pt' do
    sha256 '113aa11716367a00031ee9cd44b2ebd0470987a5d417b12aff02b0d3c770d791'
    'pt-PT'
  end

  language 'ru' do
    sha256 'f4d3df5e2a19110853731c258a3c7b176604975da97306f5b5323a292fc303fa'
    'ru'
  end

  language 'tr' do
    sha256 '412125475c055f2f3cb89fb4c9d0b9b8e1b60290b80579a2035e426d891c70f5'
    'tr'
  end

  language 'uk' do
    sha256 '767367647d0edff2ae24c0054ad6676bfabb04356c8ab98b76e18f8c72f2e0fe'
    'uk'
  end

  language 'zh-TW' do
    sha256 '88f4397eb52207680c1b4e46144c3682166cb5c32f5aa21affe5ea7dd211d02e'
    'zh-TW'
  end

  language 'zh' do
    sha256 '69a8a25f9d428792a21e4f8173651c08b8de4de66428e36d743190b54076e274'
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
