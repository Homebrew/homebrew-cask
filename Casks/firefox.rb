cask 'firefox' do
  version '73.0'

  language 'cs' do
    sha256 'e274c5d1ad9422c9844ce00b1aebe66e64673c1f1e082eefa561c4eaa3da0bdf'
    'cs'
  end

  language 'de' do
    sha256 '79f434867738764a1e57f68ff497dfaf65a726f6a02bd4eda4daac6b8e694958'
    'de'
  end

  language 'en-GB' do
    sha256 '0241185c56facebc18784327adfc3e70543e6156c6448c50cf1cc5bccda95170'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'eb0eeba647d8ba332b30d98d3ee845213a4b18db97890910a35a1f94c1b37250'
    'en-US'
  end

  language 'eo' do
    sha256 'fddb5edfd9b80c23e88d5728b691a287da32977170df36460474f9a72e3bda09'
    'eo'
  end

  language 'es-AR' do
    sha256 '2476f97df9dc721e724935a3b0f5c77c001e34a6122787c7fa1fe10523f6a1e5'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '995a0cc25b8887e26a974a68b070c95f1ea82d51b906109e2350f66eeab521d9'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'b471979598841cf635669014e8ff607234ccff2f3199b999fd57b57d2d4eb37b'
    'es-ES'
  end

  language 'fi' do
    sha256 '8a67ca21626c082f57069a81883cf101f37a8174f240b5addd7c7ee4da90a3b8'
    'fi'
  end

  language 'fr' do
    sha256 '398e21e650de2aabd18414a716979ef0807f2d111b6cf156f2583d02cfe2affb'
    'fr'
  end

  language 'gl' do
    sha256 'e33d458b38f13fa02464a64b33ebd7b67c72e2a6aa5206671ae712169629ab33'
    'gl'
  end

  language 'in' do
    sha256 'a613010889fadce903b0503ad898a4c543af2143c0aff58e8462459a6f2c0838'
    'hi-IN'
  end

  language 'it' do
    sha256 '010877dd869dc2f17b825f6ab8505751fe965c5bca63840ad520ffbd4b6a5461'
    'it'
  end

  language 'ja' do
    sha256 'e092e7a135e1d4ea9c29c27dd132971b291aa06f3c6583a358e1e3acd55a9525'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'f8dd5cfbf56d446d3bc1218cd684e07f6a595100734a2248225ca2758022cb9c'
    'ko'
  end

  language 'nl' do
    sha256 'e12faf3ae2a944dc29f685c780e46651eb2ed9731dea4693ed4cc8e535ee2e62'
    'nl'
  end

  language 'pl' do
    sha256 '75f08d9441e022b09499b365fa8ca06c430089dcd3216a3934ee392d709098b5'
    'pl'
  end

  language 'pt-BR' do
    sha256 '307fd3f83451c544c0b72680bec36f2215a07c4ff8c5cc6d26d2e5f8c9cb65c4'
    'pt-BR'
  end

  language 'pt' do
    sha256 'd005b09647a5c2a1f9862093d01b1a10495cdbc632276efc56362f87cdfd1c4b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '3036a60e46190db661b7af31564a6f3e9d0d898993d1edacaba613f9dcbc9644'
    'ru'
  end

  language 'tr' do
    sha256 '8a03a7367050407a053926b320751ce2562eb7332fb88226d35a9e961942df4e'
    'tr'
  end

  language 'uk' do
    sha256 '2c726f192e8dd2103b5e3c00b65df0dc3df5358795a43432cf12bbb91c792fb4'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c391bf1274a1b4211a18822174351e3c620ea1889d4c5562a07f48edf63db3d5'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ab9d7cd19ab38a0e40bfb9e9168309f953e0dda415890551255e66e5997d8acc'
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
