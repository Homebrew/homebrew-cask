cask 'firefox' do
  version '76.0.1'

  language 'cs' do
    sha256 'a7a586aee36804a2aab8c89ae3e6295fc3cec647c410d1f853f865e5e6c4ccb1'
    'cs'
  end

  language 'de' do
    sha256 'ee281674bcc375d71546ab6c21f85db1a04b4ef999c5e2a15c3d5e569a67b3b6'
    'de'
  end

  language 'en-GB' do
    sha256 '6a8381fe0b1019fea221a6fb661ed9139422c3451504e2d9ac67dd7286f575cf'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'a0a0c23abb829807c5d10b6a9423bbc9c0445fe27fff69eb8ec1caef766d4451'
    'en-US'
  end

  language 'eo' do
    sha256 'a751fb770543dc1688041e11813070b5e012a3dbb2e0cb774cca63f5ae935282'
    'eo'
  end

  language 'es-AR' do
    sha256 'bfa6e3282de83ebd447352c2845ea38224a5047c9ddd63a03335fa8f38af8867'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '88a99908eeba6183312d5ee2d7d4a47459d565eac3bce76572d1592267112e34'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '93ec59e7da6633e336176797b80ce7e9feee9b750fc1be13cb7d9b393513246d'
    'es-ES'
  end

  language 'fi' do
    sha256 '51385737a7f325044e021fbedebf1c37fe37c9d9002f404c6a1ab1d5b1db143e'
    'fi'
  end

  language 'fr' do
    sha256 '7fbb2343f96fdb0d810de8a71a94a69ec6c4fb0cefaede9d8cd910675ca9b382'
    'fr'
  end

  language 'gl' do
    sha256 '2855bfe1f6b992cd7b306817d1c103f1f3aa76c512c3f3679109c2a998d9be00'
    'gl'
  end

  language 'in' do
    sha256 '463ea0574f004c61eadcb370ebc7b2c7373286c1b9be6ff46c7cf3c873d69597'
    'hi-IN'
  end

  language 'it' do
    sha256 'f1fbae8e011c07ac738a5abbcb7caa05845095ef7823c0dbbcbf88df0d023c31'
    'it'
  end

  language 'ja' do
    sha256 '343938f5774012b817417e8887f71491c18736ed728752c9a95c274ff2d06d4e'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '7b34ac3eb2d5bcb20359ef3bd843c506ce88119c15e4c2119b049c0467964e6c'
    'ko'
  end

  language 'nl' do
    sha256 '8fcdee473631845c56e489d14b1ef3f5d12fd7d3e45a9f40338bd1acc6ed1057'
    'nl'
  end

  language 'pl' do
    sha256 'c370ccaea3f8aa436313bb64e5e213b62b767b5521aa82f3e341709fba29c601'
    'pl'
  end

  language 'pt-BR' do
    sha256 '293005eb71fd83dca3f2b7c059f980f34bbb9e46220613630469663e32b5c971'
    'pt-BR'
  end

  language 'pt' do
    sha256 '6087f1aa0180c300f2617e799afa6ca57fc4dea5e036c9a26550a6bd335260ce'
    'pt-PT'
  end

  language 'ru' do
    sha256 '54d1342c1351bfbe06416ffad9920e3e2ad3247e998175af67a170dc4fb7b742'
    'ru'
  end

  language 'tr' do
    sha256 '7ba1bfc03b444da821c0833be1803aaf12430a6afafdde0b928c17436e0f925e'
    'tr'
  end

  language 'uk' do
    sha256 '5075a5dece0671a78d48cac8cda0eaf5f12d786549ed2048c9c34da14d976573'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6604118cde03121f1d9ed14873844e704174ea55ead5959ea510d4861cc36768'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9ff0c97bcc696d6956d547c72f6b5c86fc4a4eab155bdb15dbb2c9cd88f29746'
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
