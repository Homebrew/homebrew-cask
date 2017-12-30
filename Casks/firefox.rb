cask 'firefox' do
  version '57.0.3'

  language 'cs' do
    sha256 'd0a55a22cfbabe994542c0cabada8573e364362b178414bbc1de748b8ae8c362'
    'cs'
  end

  language 'de' do
    sha256 '07b02546233b96d667f1ff8bac5b1fb043896c401426ffac0da14f3877b18760'
    'de'
  end

  language 'en-GB' do
    sha256 'e305edd91eadc59b9ddee8b2fade8071b5719fba2a33ff14d8efb3d1626263dd'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '948e7144f4dcd9d339306a414c79e1fddcc693c823eb25d2b832357d32658203'
    'en-US'
  end

  language 'es-AR' do
    sha256 '245df28470b04bd9faf8f4cffca4561195f60a6151399bc9b7bb201265534935'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'bb2d386ce6cd86a558de461ff38f5a0b02cae2753fdc999c1c30d1fd29fd8e7d'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'dd8a017dcc4d843834378031965981517df6a5b1b153d5e95b7b4280e32cca7d'
    'es-ES'
  end

  language 'fi' do
    sha256 'a5da889da5f2b01786f99029c8eba655ba31ea6b5ef6a66228d024f55481b15e'
    'fi'
  end

  language 'fr' do
    sha256 '9511ddee452cac65f125d39a1b86209fae56021276837e8443042ddf1c6c83da'
    'fr'
  end

  language 'gl' do
    sha256 'a08c202de2a04f89e704dfcb2d3b3f46c1c8e061e5ae08f692863ca75286125b'
    'gl'
  end

  language 'in' do
    sha256 '772bbfdc4f728fc769b261bf6e23de60df48c34bd441f113cbd27a0cb78d9e7b'
    'hi-IN'
  end

  language 'it' do
    sha256 '8876b658767c8296729d6fc72fc6786cc1939d55b519d49d897df693c41e7ff5'
    'it'
  end

  language 'ja' do
    sha256 'b0b669dca23fba0515f126d1d6a15c3b019a7e05eed9b57747f8cb781c3aefb4'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'ec5cbc8f0e255908b23382bf38521cf8a4be7e9a13581a9a34fb0d57f8d29188'
    'ko'
  end

  language 'nl' do
    sha256 'c9e4b0783c9e3e9e70045343bcca78d5dc2378aa5f497992f82cbb6895e589f7'
    'nl'
  end

  language 'pl' do
    sha256 'f37bd4f2b19b4740620c7b6e3e9c2d62284629d917a613494d92fe8e70527c33'
    'pl'
  end

  language 'pt' do
    sha256 '8aac99ac67087e6e0b40bb77e919dbbbc868a1684c17a2bb6896660edcd4770d'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '598e4aa419c9137b9a9ba82c86318c704551b02d7d0e7dda0fb80080716ff4fc'
    'pt-BR'
  end

  language 'ru' do
    sha256 '49176e2d1f026c8ba01e711bc76fb3a67d739ab47c9d10abe94ee71cccbfe0ad'
    'ru'
  end

  language 'uk' do
    sha256 '2f55448d869834a24e42b8ad76792957aa14ea0f52da5c4cb412b7804598e4cd'
    'uk'
  end

  language 'zh-TW' do
    sha256 '077c23fe24023e1c4862442db6af497cacb0a7b4dad8b3a157c6e7ed1e0dd6bb'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b14857d5c56243933fb166e3c9b13100dd484f5254ba69eb3d833209b264c649'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '71075f50d9ab9f340d135e57ee5d53cd389daea8978691491c9c757bb9dee2b6'
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
