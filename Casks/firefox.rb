cask 'firefox' do
  version '53.0.3'
  
  language 'cs' do
    sha256 'f4de07f648dd1688075bb25ecd78f0a686ea156d67ca466436c880b985be2390'
    'cs'
  end

  language 'de' do
    sha256 '35524e21ff7ddf4b73a00e8307930db6eef306777e515d8b497249a1dfc6e2b9'
    'de'
  end

  language 'en-GB' do
    sha256 'a1a877a9e170630ea2e9530bd1b103f5e47ba707c19810793d73ac56ddcad092'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '809887b3bdf826c4f2f7c47f714e6bb609a345d30a318f45d3d3f90bb79466d7'
    'en-US'
  end

  language 'es-AR' do
    sha256 '6c1d50959bdaf50fc6a42ec6cc51a875d7716aa2009214768557fa648ed898a2'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '3c99fa87e636daad6bb7e5790330c5b4e4ef915680a382292b9305444ab93bdd'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'dc5df02e388dd78f460029f4ac9b97825ca47486eadb5a2cde13e3544e9898ba'
    'es-ES'
  end

  language 'fr' do
    sha256 '6d22f1b4e60d2885db693890a0f83c1fe7d1b95200dfade43d210ee081382bfd'
    'fr'
  end

  language 'gl' do
    sha256 '42b270766a233c26874b9d00d29947745766c08b0647931812dec5b6014fad4f'
    'gl'
  end

  language 'in' do
    sha256 '38c98904ca9e177964ae74e11df3e89be318aaa24f8b00b2e22116b30679cc7d'
    'hi-IN'
  end

  language 'it' do
    sha256 'c99b910b7bc819d7963c314b7369e2ca56f850ecfb5ccd26e74de7cc06e2bec4'
    'it'
  end

  language 'ja' do
    sha256 '0ec6a011aa60ec3f2a7186dd8eac62b1e425b4dc9f4d9b5746607e2c2fa326ac'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '879f55c9796db3a0b314f2ad6ce618c17787ca6206a0e0c57397e5d4b72a2ccf'
    'nl'
  end

  language 'pl' do
    sha256 '4828a7f2500475bd433f18dc6c281bb3653f8e51977d685cde09b5db0587c4a8'
    'pl'
  end

  language 'pt' do
    sha256 'f9891129ae30538c7707a0433f2c5fd46ec1513559b95168585e1be28eec77ef'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '4097e0554410e93a4eb26c53375b737d9efa6cd4794480985c2c59214797aa64'
    'pt-BR'
  end

  language 'ru' do
    sha256 '33cc03282c2dfd4bd7da3c040a6790468ef79faa4acc76fe9e39b7cb87a19b42'
    'ru'
  end

  language 'uk' do
    sha256 '3100fe02bcca2875a04e54a6d3745e2879dd2a65b24c3d02e9d4d77ae09cc031'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ae04ca911fdb0fe6750cc9337334becb13f7213bc77c41ea335e2be12c4fdfe1'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e8b94aa3c0f25f8cb4339afdb1c7f2130263a72d8b0601e3f4b89f49fcafa154'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '33144ae798d85f7f1791a9593a4d6db762720621cfb74bea00e2e0d442fa03a1'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
