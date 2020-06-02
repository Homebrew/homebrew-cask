cask 'firefox' do
  version '77.0'

  language 'cs' do
    sha256 'f073faad3b4dc982f47bb478af49a3e5e5209a2f5812757f5bab10e8f94f95d0'
    'cs'
  end

  language 'de' do
    sha256 '6ac652d614c6eafd66ca3dc56730d959f7990bf47966ce586873d70b0e62489a'
    'de'
  end

  language 'en-GB' do
    sha256 '680e634266dc189df8f332fe5ca537a06809cd5d11e5ed3170c149322091a9aa'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'be1735b3ee7fcb49e86689dcdf7c84d4832c5a188304bb7604a8c8f2df456670'
    'en-US'
  end

  language 'eo' do
    sha256 '4c8aa32dcd8418e81f45781f2b7d053c2193d32239a8f74d5f26b02a96c1ced7'
    'eo'
  end

  language 'es-AR' do
    sha256 '0099203b1c3df0ecfa13ee4b38f54f95abc70e0a13532394d3cac9575b5a36ec'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '2d3db4b4569df710189db6ac28d462132b6ed9a2741d3b25f82814b5179b9263'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '7e8b1659ffa4235c763d6e125c22a185d7ec015a23003a79e1a67cbbe48161d9'
    'es-ES'
  end

  language 'fi' do
    sha256 '76491718651de0d788c3d85f8604f5136f7b938ae138dfccddfa3b4c6c8fe87d'
    'fi'
  end

  language 'fr' do
    sha256 '28011ebfe15a0ea992c1cc6430919a2770323f3f77ac0bc87e3ada819096cf55'
    'fr'
  end

  language 'gl' do
    sha256 '091a819b2f2a118c5bbb0c119404cb7746fd13f6fa7d71fe12b29ff70ec5835a'
    'gl'
  end

  language 'in' do
    sha256 '2a29004ee38a133dfe749ab3868dddd041cafaa901cff3540810a272f94cc7b2'
    'hi-IN'
  end

  language 'it' do
    sha256 'b8301499dfe67a4bbb55d051622defa545bdc7e6c94a567a38ccc9203e19454c'
    'it'
  end

  language 'ja' do
    sha256 'ac6ec25ec6fee5371d786c47654aaf6211714258d9a1ad722dcf1008d39c4645'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '7a34977d17ca03c77fef2a3faa2944ace161b0182a424a3f9a276fb6d62e245b'
    'ko'
  end

  language 'nl' do
    sha256 '8ad92542ef8363a6904645fa7dd24835dee1757c533c9b890133c81f985f43cb'
    'nl'
  end

  language 'pl' do
    sha256 'bff64769d997b14f3442898e0a200154c5c2c6ff19452149834a444badc91d48'
    'pl'
  end

  language 'pt-BR' do
    sha256 '5dc8a08efea4410c3c76ae9df0d05cc675e7100bcac20ccaff9853e4570135af'
    'pt-BR'
  end

  language 'pt' do
    sha256 '5bffe28a18309af837ff7e246f5053aeb11245e85c20857e1f7c365c09913a5b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '76203d9bbf7171fad8d7cbd9041006b5b3f43e64cf8484252d38fd45dd10604c'
    'ru'
  end

  language 'tr' do
    sha256 '58c64f1358dd9a9d294b0b7166663e36534dc006fa8d4571f9a9bea07d9041d9'
    'tr'
  end

  language 'uk' do
    sha256 'd855313f591105a9d0c2f11b56887649c139baa840fe6097150670faedee6b5b'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1cd50adb9b781e560fea3c04ec05f09da56135480e8c03f541fe7e3115e5039a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9f91cde780d9ed79ad5ba4194d2133e9740b60accf102f8be4a7739d00e031b7'
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
