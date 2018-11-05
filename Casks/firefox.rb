cask 'firefox' do
  version '63.0.1'

  language 'cs' do
    sha256 '5c6e615a008b9970e0541de904e51dd6a90386df7282376fa1fe67fe5d9df251'
    'cs'
  end

  language 'de' do
    sha256 '5a3db2af3fe797a49e8ec219982c44ec4b5d5a401c56c36cafb6ac6be83a5bee'
    'de'
  end

  language 'en-GB' do
    sha256 '7fa6af399811676e5ed9cf8292075026231fb797dbd59c8aeb67e5df887dfdc1'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '73e810389dcbf3b0ac74d0997121d498789d5cd205da16175c4ca5fca2ca8f79'
    'en-US'
  end

  language 'eo' do
    sha256 'f8e077b3bba577397926c99db23c8a2324a410b48d09bc8a579135db029b3314'
    'eo'
  end

  language 'es-AR' do
    sha256 'b58be57c094f8f894092c90cd9a6108b1fa1f3e5b687c472c4f1ea3061da4590'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '04c577bda3fb3ff76f09a823c0aea5d26c7079b159e57743502bd037a4c5351f'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'd8d2df0443f1b6821e7163221be776b2bb838e3bf01e4be0080ae66b285c568d'
    'es-ES'
  end

  language 'fi' do
    sha256 '89aee202402f0f4aa4465946553b2911881ac0e0b6c38ff7997443f55bb0f1c9'
    'fi'
  end

  language 'fr' do
    sha256 '4b17b3760bb325623a00191d9441cbf3e1c50db7d0abc1b55a666c8985263bf4'
    'fr'
  end

  language 'gl' do
    sha256 '2568006ddc93224983820c752e6a67f2a31e251aa22361a5d792cb1d8efec243'
    'gl'
  end

  language 'in' do
    sha256 '04cf115c2c77ba614c01e1f9825a229b3a49a44b0cab09fa0584b3aefb77b485'
    'hi-IN'
  end

  language 'it' do
    sha256 'a9a4cf8e76d5d5066e4159cce3dd550b89ef3b493fe1e5c817b2a61e4dd2567d'
    'it'
  end

  language 'ja' do
    sha256 'cee6c4796262692fe5c5b0376d6022942640e43fc10db6d47a6a89ec12310fb5'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '83a747b0c8cb2b507e6d88e12ae42f9ae8a133d5ff8b1a111228befcc2712821'
    'ko'
  end

  language 'nl' do
    sha256 '303b63435a2f09842293e81b437cbd190c0169451cc1ed2fe082664c671ba844'
    'nl'
  end

  language 'pl' do
    sha256 '0089f464d976f59ee8e3876668e8c12590b4e96e69edcd165b4bc070f5fdba34'
    'pl'
  end

  language 'pt-BR' do
    sha256 '7ba91fc5c093a29d28dd5bd2157549eb8d0aa724c7676e6b7a4e6ac9c23583b5'
    'pt-BR'
  end

  language 'pt' do
    sha256 '931fc95cd1cc1d7f53ac115e13dbfd1175e1e9dd7c806218df6c7c2ac6edaec3'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9b910e1fc7a0d05e0b3b2b3a72ed11426ad45ad92c0b1bdb18c45d0a3a710f3f'
    'ru'
  end

  language 'tr' do
    sha256 'acabeae1e65afb778cdd21d9d92c33d1afe588d0343ddd877605d230b1c62297'
    'tr'
  end

  language 'uk' do
    sha256 '6fc1b088dc073cd8ab826453919facd76673042e199bb3fe22cc8652e605e832'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e38a2082eb608029e69c82ce7c4dc8672fe1d1fa660449af36330b14b3bb67da'
    'zh-TW'
  end

  language 'zh' do
    sha256 '8c78349c7adda98f3d31f12f18cf2c37e07cf86e7d2b88e657bbe8c299178845'
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
