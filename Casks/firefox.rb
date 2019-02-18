cask 'firefox' do
  version '65.0.1'

  language 'cs' do
    sha256 '14e6a5e880f1824856174927cf48046cc49ce0334ae7c945fd0ed2e14c01ee05'
    'cs'
  end

  language 'de' do
    sha256 'af120c3b44096edb4a1551dac2e5fedf2a4c44a162cbcc3ebd5d8e89c827857f'
    'de'
  end

  language 'en-GB' do
    sha256 '69ffc92e15bce043e8219c9a2d1bd80a23e4067a24b9b293d17600d62ca58965'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cbbf59f2fad5968db1dfde3d0692b3b08a10f1f283b7dc307f6e4f864a64fae2'
    'en-US'
  end

  language 'eo' do
    sha256 '551471d299bec2d676a2ae3abd65d96da9027e00b32e48abaf06bcdfc46ae5f8'
    'eo'
  end

  language 'es-AR' do
    sha256 '36d11aeccc0805613c9f1c9a030144b8412d06ff7779f85f3f434d53f1733f3f'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '1dffe9cdbbbdafcdd675db6212603cea8178e02a940799071720d42b10292a7f'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '46f8a7d7800ca668a9cfe509aeb76888b431833dc20a55b5b3fa4fdd9e7fabd6'
    'es-ES'
  end

  language 'fi' do
    sha256 'c7b2eccaaae65a7c43e4dd150fa79c94d7a4ff1051abff489fc51697aa596bfc'
    'fi'
  end

  language 'fr' do
    sha256 'b9f804196483038a00c52d4bdc655a4d9e00fc739bed2f73cb57d29cee5b1b10'
    'fr'
  end

  language 'gl' do
    sha256 '9ed80c1992c5ff4d4b39e8a23b9106a2ae1f0035154ab3db3c752f563deec30c'
    'gl'
  end

  language 'in' do
    sha256 '131d61571a122fc7a25a66c42227f2292ada4879ed9a4f2c14a13bde6179efc8'
    'hi-IN'
  end

  language 'it' do
    sha256 '2b83cec55ad71514ff0ae5676951b4b5fa9143b9ad9755d92f7db2a82c0d6eec'
    'it'
  end

  language 'ja' do
    sha256 '1bac5a8b44f5d10ea20e4bbf953bde733706a938117971c12e2b539d54248b58'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '40c0d010bc92ff72084eda6232f9bcdbe54bb8293a700f45bad24a19d0855c10'
    'ko'
  end

  language 'nl' do
    sha256 '2c2a05446f657b0503a13480aec535fc0296508701c25350253969fd7762e4a7'
    'nl'
  end

  language 'pl' do
    sha256 '69af1c84401d021678db38203d110e9eeac9b49fb65d35da6bf7533f5d20172b'
    'pl'
  end

  language 'pt-BR' do
    sha256 '20806bd07004ed7333b52b3a5bd474e68a074f03fc1bc6dfc7a18edad265a63e'
    'pt-BR'
  end

  language 'pt' do
    sha256 '6ca4ce2d4a741b983fe26b3e41f538515af11b080427880bf1cc471ac5753724'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9f878fd79b3022b3ad474d2b075b236b4b28fefd86ee58c314305ebe28081c42'
    'ru'
  end

  language 'tr' do
    sha256 '570bea60c6d7de1daad642a9f3538fa6975c04279c28e21e2199657a65fe31f5'
    'tr'
  end

  language 'uk' do
    sha256 'bfe9fb9f82313b863a023f24dbff070b57e59d20e099258e7fb3639cffba43ce'
    'uk'
  end

  language 'zh-TW' do
    sha256 '54ad38c2c3cf97b9f067d3386833f5a6955e312cbd17aa5e9eee34b7d03c993e'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9553e32ee372fc2ac3cf6fa0656c3e091faa2c6efaf3eb85f84ea5e7c48d9dac'
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
