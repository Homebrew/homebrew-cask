cask 'firefox' do
  version '62.0.2'

  language 'cs' do
    sha256 'bbb1b47c13b597dcbc82c5313f91a665de8fecbe4061d5d0278785704ee31f10'
    'cs'
  end

  language 'de' do
    sha256 '167d83a9da2d3b9779c9ee1cdff619325f2ade904de686e64d05007ae3027fde'
    'de'
  end

  language 'en-GB' do
    sha256 '9b819a748eda6b5883efce6807e9d820ee102a9b382a8a8f4b04254178b3ec45'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cebf49cade2daa5b17dffd14bebc092193b7c0618adbd0492ab8b5acec5eb6a0'
    'en-US'
  end

  language 'eo' do
    sha256 'a52002ddc1e4e6630b1bb3e460584cd0efcffd7ab34dba208c02df308cebbe36'
    'eo'
  end

  language 'es-AR' do
    sha256 '2d66273facbc47098015c5a499edfd8f70d1552dec8a5a08c94f4e8fbee99b29'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '5809cea553335f4fb26653c742783f0a9890b887883fb20ffe6f533f7f6ad303'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'a5ad5a54edd8f0ee6a64d2da88dd010073ccf626a094527289f9139b74298f34'
    'es-ES'
  end

  language 'fi' do
    sha256 '93734792e864bb3250e9f641a98b6907ad7a7cfd688fb4da09aa8d83ab5b3460'
    'fi'
  end

  language 'fr' do
    sha256 '034f4082b97dc7c47e0b7ee2e4a5053326194de2c21e4e9ba6f6ce45f645d826'
    'fr'
  end

  language 'gl' do
    sha256 '24a5a620518f56eb055b2251c21de549aa8986d1d37e978b8de396aa0458eb03'
    'gl'
  end

  language 'in' do
    sha256 '24883836ffe395187a5d0ffebbc4ff833fdca39aa15f8ce8087efda783d06385'
    'hi-IN'
  end

  language 'it' do
    sha256 'd7c507f5dd8f8f7e4bfbc48f773db1a950421dabb94fbd656f1e9d23a4f665b1'
    'it'
  end

  language 'ja' do
    sha256 '310b070527d4e513e1dfc0ecadeae21f42807472a04cca6c19e480b89747a732'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '8eed0df1279e7bfc2c7f97618d5a6dfe5c971509de90c1060a6ed1b25ebb76ed'
    'ko'
  end

  language 'nl' do
    sha256 '94f8fc69a997e25e3fe598a29437f31b83d57608adb84c9b4902498d08805f23'
    'nl'
  end

  language 'pl' do
    sha256 '1a97030e7ea0b4a6952618f901a37743b61d56728330cb17e40c174b401a12b6'
    'pl'
  end

  language 'pt-BR' do
    sha256 '7b87968e204dc5ecc47b03881fd917a2d5e3ae4cf774a56a24f7b6788097c7a4'
    'pt-BR'
  end

  language 'pt' do
    sha256 '365821279312af2d76bb6c5a3b5d9de8ac98f24886999afdf848fe731567c73c'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9a144c9416bcaad7fc10899496b93b3f07b28458495919cfea424bd061591287'
    'ru'
  end

  language 'tr' do
    sha256 'a39692e70333f9d92ad8e7bcf8729f6f06f1a9641a9df6c8dfaf787c22b3ad5e'
    'tr'
  end

  language 'uk' do
    sha256 '637d4e8d5399d8afcd5461cbe3f93ad3d303667e3435b7971e136c14ff8554f8'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e8ac104efbfbe4e86f8d004d95d77fc591370b4d43c1c4e7c956c8fbbc3b62fd'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2b09bebddf50d053ff1c2a281cb02045e0655fa9a3f19983372715c3b68210f3'
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
