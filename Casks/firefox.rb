cask 'firefox' do
  version '61.0.1'

  language 'cs' do
    sha256 'c663c258a5f41d431ee03bd31c7156f37de26f44f70c92722d829436934600ad'
    'cs'
  end

  language 'de' do
    sha256 'fe6ed4031b2ceffeb6ae85ec3c41dfdf86d7a4cab885f698f2c90e33bda68f43'
    'de'
  end

  language 'en-GB' do
    sha256 'a20ae2060e15a7001596914effa03b7a039c88910b4b634574735884fcfd89f4'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6c2e47343705fa25070cdf9ee89db19f2ebc178d9ad59c89dfaf15548c375d8f'
    'en-US'
  end

  language 'es-AR' do
    sha256 'e6d2f2ffeb3e8b3ad00501febeb9b8862748f58b5312defd78e87161a0271ff2'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '39f9b5f327916d7e85bb014f9bf0a9db800d0f4403e40d80a801c3854054b5d6'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e961104d92805c9c7c8bc894ba2a5eb0f099f26f0489399566414b3749f608c7'
    'es-ES'
  end

  language 'fi' do
    sha256 'aa79a944df8d1c47f35531e0f597d43ce57365100042be5e381d3ea48bba095b'
    'fi'
  end

  language 'fr' do
    sha256 'baaf3d0180548f7b3dcc07a674909d6858e5cf59dd92fcc66b83af467ba79703'
    'fr'
  end

  language 'gl' do
    sha256 '8ab6cc0e58fd5ae010a75c7e00d21be4e0d2a1e13d457d84e013e372878b819e'
    'gl'
  end

  language 'in' do
    sha256 'dd2c34500436eac310c7f3072cc719ceabf6fb63714ccc55796e44ad713db6b4'
    'hi-IN'
  end

  language 'it' do
    sha256 'b0a025092a492e200a29bfc926f7909100897aea15af12744ba05e548d777db4'
    'it'
  end

  language 'ja' do
    sha256 'c235ac289469e70c78b3b55c8e59559024545de64ba39fd735eea370e6a33729'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '9080db1077da5497ea34415e4f345b0b5b1eb8be7c96e8c30d6ed396ccb7f6b1'
    'ko'
  end

  language 'nl' do
    sha256 '554c0183cb9eb56c6ccb0c631c0828ed4f055650416a57734a548d80b700739b'
    'nl'
  end

  language 'pl' do
    sha256 'd95ebf4dec5944f1031d91959dbb7fdadd7ef7b6a1715c9291cf41c2d49b4871'
    'pl'
  end

  language 'pt-BR' do
    sha256 '2a10ef947de9d69d1a80c935ffee87428bd5c0728ff8cf6efb1860158e72a148'
    'pt-BR'
  end

  language 'pt' do
    sha256 'ebdee55358d453c7c2d086a8a10008f49012044bf5c4cf74f2fd495b6dd7e4f0'
    'pt-PT'
  end

  language 'ru' do
    sha256 'd8d43cc83461930d11c2f18c3ac87f9e04b767ab295c70562c1610a1238c92a1'
    'ru'
  end

  language 'tr' do
    sha256 '4d4b0a7e4bd800febed8c12aa98956d1a8a8dbfacaef3825617547fc7a048272'
    'tr'
  end

  language 'uk' do
    sha256 '0f7c997e920a862ef378309d5cbb5f802e7c04ccd2d3942033df538c2f007815'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ca39feb046402e4ed7b03d177dedf3e605660e175eb8d406904abd6ac069c504'
    'zh-TW'
  end

  language 'zh' do
    sha256 '12d2dec7a1b6dc8bb63afe357b143cfb4404b40f5dc52753a59d5d531330c99b'
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
