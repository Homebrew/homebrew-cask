cask 'firefox' do
  version '55.0'

  language 'cs' do
    sha256 '58962f6f3e16cee7e94e19871e815736ee8c313bfbb81370ac15d06d9bd9c13d'
    'cs'
  end

  language 'de' do
    sha256 'b63dd9ee227f2a642b9b6f25f2e2e82830572d8d92fb3807c6cfb0dfd8c191a4'
    'de'
  end

  language 'en-GB' do
    sha256 '10b4aee53e0a72393b7a00884133ad1d0b743450ef2db3255319b67a2b291583'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '5e846f0a51904fbbcd4bdb8320b8887e5fb17328f71754137789216ad57add4c'
    'en-US'
  end

  language 'es-AR' do
    sha256 '2224c475d798027f0231e8277c838561f4f6d230d311e383737504cce2ce9b49'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '8743b92880c6f72aae82276d8cc4e7e8bc2fb1eaec000ec12c62604b5226a95e'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '777394af3373ecf3f33d08e9a7824c74153b543c7060f8c116c271af2f5a65d1'
    'es-ES'
  end

  language 'fi' do
    sha256 '0eef72441ebc709e1227553ef8ad4df5b9e9b5b69a62b5351e5f85d2b70a1948'
    'fi'
  end

  language 'fr' do
    sha256 'f25d1dd90572836f7821a532593a464d53510c5f4ada05d522593ed876984f64'
    'fr'
  end

  language 'gl' do
    sha256 '102458b65768a7e1879943c2d73c4d7b75b79f5bc61eaa9a5678a2d00330e6e3'
    'gl'
  end

  language 'in' do
    sha256 '5683a955b2878f133c6c744049a9ce1b87bd4ca38f7fd315874213623784d113'
    'hi-IN'
  end

  language 'it' do
    sha256 'e542d8a12481861c829669be0ee5472a96700bef9e9a7efbe2ca0ca96fbea040'
    'it'
  end

  language 'ja' do
    sha256 'faf912e7c665715d70086d961d98a2563ee72716c930852b62c0dec095bf588e'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'eef515db1303b453b5bd71d5863ea94bd138edd598442f113a3b78b5800dcc01'
    'nl'
  end

  language 'pl' do
    sha256 '43d268cda138d8515d746c8363a9dadbb8605ca3ffb7086e2171baf35414ccc1'
    'pl'
  end

  language 'pt' do
    sha256 'e23a3d26b353d8e2e29b97e956825ec6618f004a4d12b1af0bc1f2bfde61ce98'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '99299acaf14b2c4d721dc3a369d36fe74763216bf6694ff454f9dc5ce91732dd'
    'pt-BR'
  end

  language 'ru' do
    sha256 'cf8c44e5eec3ca0f7de420f16a57b93bf8f455169e3f0701a5be2ac4dfbb2cd2'
    'ru'
  end

  language 'uk' do
    sha256 'af23fcedfe80302d83d2bf2cf52a6765efc2ab5cdb610f8124cd1228b3122803'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7a06dc6e8049f3e8d503bacf30e46cef5a8d3c12d8fb07d26385c8447e18b054'
    'zh-TW'
  end

  language 'zh' do
    sha256 '903e11d022563f42e712aa106f51c903dd8427022d07fbd2cc93ae809bf84e69'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '134881920f4cdfbdf14d72fddfcefe7743f3ef1dd31c1e0c4ab557657e52e1eb'
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
