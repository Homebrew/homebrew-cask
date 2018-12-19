cask 'firefox' do
  version '64.0'

  language 'cs' do
    sha256 '59d291f8e15f69e299ea7d1a3a931bb565b6db426a62a5fcbfad839c200c83dd'
    'cs'
  end

  language 'de' do
    sha256 '4dc4df4548215fb5d8bd37405c1f5dd03de8fe011e8d805c197c81e6715a0314'
    'de'
  end

  language 'en-GB' do
    sha256 '0c858d42997d23400a9d49b59d962523835ed5f8bee7cf573b168bacca17ab16'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e18e10ca7fbfebea0cdcda694347c63ed3967d9dcde34d2eeec5c5f2896ee92f'
    'en-US'
  end

  language 'eo' do
    sha256 '1e3919850de04620e2fc151753fabe95f551a1b6853d49c8e63e4ac5e857dc2b'
    'eo'
  end

  language 'es-AR' do
    sha256 'addcb98e7d2bd4b712325cbf0242f8e7870e792284425f4ca75c4612d0aabd2d'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '87248752479a6549133ef1c54b727b2caa1651c2ccafb2138cfbece1cde4605b'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '0b5e8581cbb33c68b3f04e70f1bfe770dbb5cd5f9cfe65c1b81a6bb00c3bbe53'
    'es-ES'
  end

  language 'fi' do
    sha256 '01b433789f9c5ce0d91a60b2dcbe6ccef8e65a6320862bf83039140582db3a8d'
    'fi'
  end

  language 'fr' do
    sha256 '57ea3ecb611b9f029335ffcc979f3ce138f26031d194c7c925beb2c8a10cc0b3'
    'fr'
  end

  language 'gl' do
    sha256 'e022f3cd0a073a1a1dab3335d4d97e26dabfb9456a2e076efdd2742774a1fca2'
    'gl'
  end

  language 'in' do
    sha256 '44c0e6f58cb2670f46db606f7e583516d727ac497e16bca0dbf6129329f797ec'
    'hi-IN'
  end

  language 'it' do
    sha256 '272f64008c87a824f5ea2ff616d08ea42ec50e0fcc1888dcc9794909b5a96eb4'
    'it'
  end

  language 'ja' do
    sha256 'aa6d1988fdd12249e58897b7fb841694ea5c1541ef5083535dbe71af42fd1362'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '0a0e8088e5e7c4742e715ffed33e9d80cde86382d98a817d4378d30bafc96fc3'
    'ko'
  end

  language 'nl' do
    sha256 '3dd21195f9acc052e21c50a5fa11aba47f2bb648b10d2741820226f6a95b83b2'
    'nl'
  end

  language 'pl' do
    sha256 'f13324f7dec44fe8f8f2e7eb90dc5f6aef7efe5df570abf10447286902ae4cdb'
    'pl'
  end

  language 'pt-BR' do
    sha256 '5fd3e98dba1a8b55a4373c3884d81fc9c199a5b6307f1f49f1d802b2ad5b5335'
    'pt-BR'
  end

  language 'pt' do
    sha256 'f3bb0224806b9a99c4b8f772735c6d1d73d37a0944a7a30577c169bafd9ac3dc'
    'pt-PT'
  end

  language 'ru' do
    sha256 '38c5efce103295d814b479c002d7b262507b63188367a95e55ed189ef622a7f0'
    'ru'
  end

  language 'tr' do
    sha256 '6e23447aca9dd9f555ccc9e61aaa5a7505f6053ec7430897a070f8c95a992085'
    'tr'
  end

  language 'uk' do
    sha256 'fe4961ad328c70eddf65321b9d9e83a55262d4de2900bd7ade22ef2f2e274ddd'
    'uk'
  end

  language 'zh-TW' do
    sha256 '554c88fd26d44b37f08fe8342874a076ea7541e57ae3e04a324a1bebc4b087cc'
    'zh-TW'
  end

  language 'zh' do
    sha256 'dfcd03134435dfd37ef868360fd53145dcb35fad2a3a3c6ca17b48f03a8e9dc8'
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
