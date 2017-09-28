cask 'firefox' do
  version '56.0'

  language 'cs' do
    sha256 '3849b1af4c013f134db8fa759e65e9a02ac9283a001a206f946ee12fcf1fb84a'
    'cs'
  end

  language 'de' do
    sha256 '93223c3e3e42af2b7b4bd31c17a9b29dcee03d51bd93b304f11e8756e71cf82e'
    'de'
  end

  language 'en-GB' do
    sha256 'eaf1acb229e42b9e9ff893ed0704d6b57384dbb05faed0bf2fbc6b8b22a470bc'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'aae8eb702743ca834b951ae41e14b21f314eef0a67c74e3cd45c459aecdddfdf'
    'en-US'
  end

  language 'es-AR' do
    sha256 '53062f8270fc484d0d8920c3124f2431e062a243a39c757719cca4e1dcf275b1'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'b5606fa5e07547b8ad5226d625f37a72745eb49021985020b1a5d7b0b44ff4fb'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '801896f1aa50318220af28a11752946b150cd188f4c50c2ad2f2fef4ab9b6100'
    'es-ES'
  end

  language 'fi' do
    sha256 '8fca58027a32e4e5245b1a495f157636050a438e4368209f6f39fe4f4dd65393'
    'fi'
  end

  language 'fr' do
    sha256 '5613564b1fb2b6c436f16764aeca1d33a78bf4cb4ef105f4e625a74738e68b7f'
    'fr'
  end

  language 'gl' do
    sha256 '420f763b9f739608ffa20c327c99a6841cbbde3bc64f352eb19e9e0598146100'
    'gl'
  end

  language 'in' do
    sha256 'a10aabd4719d87c13fee0b7486570d02086f80bb24722f6dee545dc893067d6c'
    'hi-IN'
  end

  language 'it' do
    sha256 '345a57ec1210e251ec7a4ffd525b8babdec8b21723b69fe90aeadf9929c76672'
    'it'
  end

  language 'ja' do
    sha256 '76643cff503fda4a8efc5bffc612fcf13399311b6e0d16a6461f62b9057258e9'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '330390e6edbbb00cca07415593fd9ed9a99c4b047d494ac80ef3c9ef075b03c2'
    'nl'
  end

  language 'pl' do
    sha256 '552d02ce285d4b49d9d62089370686b703fd0e58f12e9550ecb13a72e3ed95d0'
    'pl'
  end

  language 'pt' do
    sha256 '2e9cf7984256200c375c00db2ddd82249c347463f3dc53fd65576780a789d9f3'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'f93ccc1110e584b97e592603ed9172ea340abab9b49dd3c3ffea6418d28b1e9b'
    'pt-BR'
  end

  language 'ru' do
    sha256 'e0e3558f845421891892dad919bdb437a626887193fd553232f6752e88989174'
    'ru'
  end

  language 'uk' do
    sha256 '5e06ef1abe7eb0402f1b3dd5d88b984100436154fb03f847ed4ecf6383ad7b99'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7fc457e564fdb6f43b5bc60354d761b79474cf005e40322a6201231bc13ab817'
    'zh-TW'
  end

  language 'zh' do
    sha256 '87184f9932c3f846b4596ff97851eff379af1742d35951d1b84216c748692bb9'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '0c9e6180b69d8b7f4e2cd6f3952a64d82ebfb419d503744f12bee75fa60a8c3a'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/firefox_*',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Caches/Firefox',
                '~/Library/Caches/Mozilla/updates/Applications/Firefox',
              ],
      trash:  [
                '~/Library/Application Support/Firefox',
                '~/Library/Preferences/org.mozilla.firefox.plist',
              ],
      rmdir:  [
                '~/Library/Application Support/Mozilla', #  Don't trash, may also contain non-Firefox data
                '~/Library/Caches/Mozilla/updates/Applications',
                '~/Library/Caches/Mozilla/updates',
                '~/Library/Caches/Mozilla',
              ]
end
