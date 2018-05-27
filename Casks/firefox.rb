cask 'firefox' do
  version '60.0.1'

  language 'cs' do
    sha256 '2d5af247fe9c77b6463304e2e11bc2a94c9fa29dcb041bdb4b74b9c21f31b653'
    'cs'
  end

  language 'de' do
    sha256 '634aa70168d70e32058c6263f156af229c4965642225763a30ec91609cf81dee'
    'de'
  end

  language 'en-GB' do
    sha256 'f71618820e92e7c25622c03b25b8d95d4f3195a8f1ddabba79871e1c9bc49243'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4a052833a88ce8603c719ccdcd08b8f32ae5eb3be26f61120a6f13c48eefdb49'
    'en-US'
  end

  language 'es-AR' do
    sha256 'a00b25cd799f828a77e7dc08c96336bb42704f5b9a69caab88e2a581bf8637f5'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '5ad09569e19305b2e0ad040072f4c4c77b3b6ac88913609eaaeea5ca6bddc33b'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '12d46b1dc8cc86cb0919957d45b548787ff4bfbbfb600019bf0da016128ac259'
    'es-ES'
  end

  language 'fi' do
    sha256 '4f406cc3054538951486177baac32db3e1230db1429e09ba5d43c0a76d3312b5'
    'fi'
  end

  language 'fr' do
    sha256 '2df259508cc3c0d708eae963a4ca7028f41c16ee5d99d44b9c9a98e784bd84c8'
    'fr'
  end

  language 'gl' do
    sha256 'b42601d97d3b31e3267c4d2482d20e3e2ec632d37de7fbc106dff0bf0c07bd20'
    'gl'
  end

  language 'in' do
    sha256 '6573bc66c529936f19b2a5b1280119d7b4446c6fd649c628a942fc0276040930'
    'hi-IN'
  end

  language 'it' do
    sha256 '29a79ad59fcc2777a458f3ec37d1c954fe97c87f557191da53b908ed420d9676'
    'it'
  end

  language 'ja' do
    sha256 '240c7f0c8b36eca9f60b58bb54ffd554955e6069cf41116a3882fb347f93b557'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'de3908356fd99ce9d314d9df154a41598fb0270b50948732d4bb74972ec5c070'
    'ko'
  end

  language 'nl' do
    sha256 'db7bc4bba4bcfea8fe0cb2a10d9106bc87d076611b1dcc100c2c9d7c876630ed'
    'nl'
  end

  language 'pl' do
    sha256 '80283e1c7bad3fb9f30f92fa6e87a44ab8e77200b0524fe3d039262d4da39297'
    'pl'
  end

  language 'pt-BR' do
    sha256 '17e6fedf953fb4dbad4927c60ef3379f93395ee6bc648a7bb2f399d2b58b9e60'
    'pt-BR'
  end

  language 'pt' do
    sha256 'e90c0b0cb92d73010b58df89155ed49782cc7b5feaf896367e1fd41c357cf932'
    'pt-PT'
  end

  language 'ru' do
    sha256 '786ae9eff46327b04b60e74c426f99fb885bb8e50e314efde72bbff587f205ea'
    'ru'
  end

  language 'tr' do
    sha256 '889c5da81bd1f5132cd0fdeac6dcdecaa54108bca6a9908bef4ef25098ef8ac8'
    'tr'
  end

  language 'uk' do
    sha256 '82bbc32724043b020d732b4e8474bbe5d3c51fa1f6ffba8d377da63e8a7b13bf'
    'uk'
  end

  language 'zh-TW' do
    sha256 '4e4e2e39b994d155604ec9b344be197a7a110eb94bbd0c2153f084b345392065'
    'zh-TW'
  end

  language 'zh' do
    sha256 '3379ee85e903c54cda37ef9e08e4c0738b0aec405d688cf9c44e96ccc548bbaa'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '5be888d798ce9dc2e37d57ff85c37e4d7af2f840fe75caaf79ede5ed98a091fd'
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
