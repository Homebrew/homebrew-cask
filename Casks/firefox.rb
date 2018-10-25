cask 'firefox' do
  version '63.0'

  language 'cs' do
    sha256 '7da9aa3439539058483fc3264b4c41760e167b9644d744258621f147c0c18af0'
    'cs'
  end

  language 'de' do
    sha256 '72f6402660e7840fdbd2e1e5ea79a7abf1a6359f5ce564ed868376e175c3919f'
    'de'
  end

  language 'en-GB' do
    sha256 '9eb6d6e049ddfe78bfddf4066306adbbd809dffcbd9b6f213bce29ffd5899bb2'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '805237c776908b4287d20f8396215947d4723f54c1ec2567a3370d41911cc171'
    'en-US'
  end

  language 'eo' do
    sha256 '6f6fda2540e84d9acc7945f11ead1820bc9a5329171aa79c2e24fef602356a21'
    'eo'
  end

  language 'es-AR' do
    sha256 '022f3341f1dd97bf2259f58313a5cc07c3475cadb4a1e52551cd27fb734aa728'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '8236abd8567c6208e19558515491e3a5ae03c1f8c1459f4842a8174f63630f83'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e0396216df7fe93d268c8626b92ae7f4d9beaa90296dc6ed2ef18137f1a5bb72'
    'es-ES'
  end

  language 'fi' do
    sha256 '58f128f836ea041dc45d7eb74c525ad002165987a8834b3392d60439555b9c27'
    'fi'
  end

  language 'fr' do
    sha256 'f6a9b8e895face76e7dc8f592fce0e88efe88cebf45adfdbcf26099e1f7ba7bc'
    'fr'
  end

  language 'gl' do
    sha256 '8eea232bc41df7d36b0b57767c8d7757885c13a436c14a87aed63f161cc8bce4'
    'gl'
  end

  language 'in' do
    sha256 'fdbef62794969543daf2169946a46cffbaf67133b9dc7838562bb8822ed9b42f'
    'hi-IN'
  end

  language 'it' do
    sha256 '140f59facaf8fda9a2083f77c4e59c547d626f4f0eab3e1d464174409cd47e8e'
    'it'
  end

  language 'ja' do
    sha256 'f3f630d26d6e1978933feb7df3996a90b73d446561e514649b990ae5dd2f0a33'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '0a71c978fe42a89c0a9bca83b12c79951e188dad150eb75a1b254ef1aecaa0e8'
    'ko'
  end

  language 'nl' do
    sha256 '0abcf5bd72034053c5436be5c99be9e206233b082a28d3367052c6a91c3ff1aa'
    'nl'
  end

  language 'pl' do
    sha256 '042ea7e83f16ebe952f9156306fffeed589ec29088c5143305b98639ce7d318a'
    'pl'
  end

  language 'pt-BR' do
    sha256 '6bd0a29f0fab37be1f79265b713afee972a77fd57b39a1c209f91598c98db9ae'
    'pt-BR'
  end

  language 'pt' do
    sha256 'a90cfe88b6f791acf5d450c7e314e4d61602ab4621804ed5a669aabf718986e0'
    'pt-PT'
  end

  language 'ru' do
    sha256 '021d103a070daaf97cf667aeb076b254515d4a9ac8b4ee70276689c69fd23030'
    'ru'
  end

  language 'tr' do
    sha256 'b747458f0812458b530f4514481135a5eb4d2b5297d26580662923d82df9e97f'
    'tr'
  end

  language 'uk' do
    sha256 '8bad3d36cb108469e66b749076d4745786664ff45c679ba83dae1e85d276a3bb'
    'uk'
  end

  language 'zh-TW' do
    sha256 '5a103d3002a4f856a537f367604c4bbcad18631331dfeadb0d177da02c2cdda3'
    'zh-TW'
  end

  language 'zh' do
    sha256 '81a313392190c5beeefbd96468a0903c0e3922ab4f76538a55e3f5363cd16d96'
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
