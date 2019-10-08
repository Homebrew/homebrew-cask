cask 'firefox' do
  version '69.0.2'

  language 'cs' do
    sha256 '07523884c402b0401be2b1d760db423250e62b21fc918d0125a979cd76188466'
    'cs'
  end

  language 'de' do
    sha256 'b8871aceea8677aa8875eebe0e14f16c53f511a935313b6a5e4e1235dd4b9ebe'
    'de'
  end

  language 'en-GB' do
    sha256 'fdf7e17d22a567ab3895a3be480285c5137fb1d7a4161925c63400b3cf5adb14'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '13ae4c4b9ecb9a8cb5124d8456caee43971d83319c55ec37c94ef717528f92f9'
    'en-US'
  end

  language 'eo' do
    sha256 '167859b278810df8cc6053b0806e65dbfe782894b198dd2b0994d62fd3c15455'
    'eo'
  end

  language 'es-AR' do
    sha256 '7fb0611fb38f501350954cc40f7a019180f8285a59d34ae9346a35fb7de88ec8'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '5000f4c6da3821e45990ad59521c002fb8cd80d55046bcf87c6c9ea4721181b0'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '5f640630407eed4218eed2657a1411b556eb7570160fc160fc88d9c915006035'
    'es-ES'
  end

  language 'fi' do
    sha256 'ed5155077eaa4d1e9cbdb8796416a788bda57f1bd6f8d8c3c0177fcfed399ae1'
    'fi'
  end

  language 'fr' do
    sha256 '0e36bbdd22c001b6e92652432fd7e86ca154971a873066ecb5bea1034a343a9b'
    'fr'
  end

  language 'gl' do
    sha256 'b237b8d0cfce36a93918892fdeddd41428abd8747c4380ab68b79ab7569e7519'
    'gl'
  end

  language 'in' do
    sha256 '72af56cb5d8eb11922855a765684d132f07510d90f8a71f52517dbb67fc2869b'
    'hi-IN'
  end

  language 'it' do
    sha256 'abaf685e2141a53ffac3c124e2eb8c5c20782af880768bec811ed2a7f4dfc83a'
    'it'
  end

  language 'ja' do
    sha256 '4f2b0fa982b67b70db3390f7524003ebe6f137b72e133ee32ace9687c68c72dd'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'a68f41406e786d8b93010e622cc82be6d85ed03ce94c2a510826afaa0442a4c6'
    'ko'
  end

  language 'nl' do
    sha256 '630ca6024acbf44d19d6ec48116d77a639ae6dd477b9060e87c05d0bfe182c6e'
    'nl'
  end

  language 'pl' do
    sha256 '71f621cf965c3d31367b84428897e743b43458e2a2512d4d9109353fe0129fa6'
    'pl'
  end

  language 'pt-BR' do
    sha256 '068b7cbb89ee8a57f1df3e9b1f9aebc9eebb1f96e7b99aaa5e8ffd83cf055582'
    'pt-BR'
  end

  language 'pt' do
    sha256 '6d96658af33850371ff3525c9f4dafbbec14c29ad53a754d11aa52a546c056df'
    'pt-PT'
  end

  language 'ru' do
    sha256 '77e4ee5988310260e3ec050319247fcec8f62ca8c66cb07297691c16529e81b7'
    'ru'
  end

  language 'tr' do
    sha256 'c08ce4225429e9e2c881c101f60c688f11d0b61ae8b5b1d13d7e17cf1d51101a'
    'tr'
  end

  language 'uk' do
    sha256 '0b4b017421746b9a59c185261ba1a5fd5b48ec60108252dc5b40bd502e107050'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8164843a67d33491a18f1efd04b8bc40a8bd838198e759d9375afda33c8a4ab0'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a348649d320cb7f24be01845beff6b9e43ce923267955b6820c26ef452058a7f'
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
