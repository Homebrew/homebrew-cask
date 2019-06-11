cask 'firefox' do
  version '67.0.2'

  language 'cs' do
    sha256 '9840268b616a344268f0e71c888f62e03d58a06c7d95b717f661b908d9b07b39'
    'cs'
  end

  language 'de' do
    sha256 '3292c56ecdb091e8f73f072690ec842d84af5a911c330322a4876e2b0bb0c354'
    'de'
  end

  language 'en-GB' do
    sha256 '04bc9a91d311480676c592718439a5a19afd86f8c93854d7d1ae8c0f4c3f9560'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '44a6063d33f329b30129419e89107a495577fdfb9638ac53906478e2cb533d95'
    'en-US'
  end

  language 'eo' do
    sha256 'e21febde3fc3515753216126cec7187761812fa0163c57776b71fa2c54765ac3'
    'eo'
  end

  language 'es-AR' do
    sha256 '534c197c1c43fade13d9d2f0bd4ee7604b41d2d60e91b750958be3c0a4c62f5e'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '1655bbc1b02d665c3f749e7bf865a4bd0f3740adfcb67da58c16b7574753d0a7'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '08d6cb42a88c6704846ef415bc8ea90fe754c44615b0c5b32c407a48761c18f9'
    'es-ES'
  end

  language 'fi' do
    sha256 '4c7e4eabe9473ff2356052d3e7f53969431f956c3dcc43c2caa28a5356c09af0'
    'fi'
  end

  language 'fr' do
    sha256 '2ed11d526e85c201c8902404e8c2414309269964f8597c3d35b44252fe41ffaf'
    'fr'
  end

  language 'gl' do
    sha256 'fadc9a4b384e43c9c3ea69de13249357b22ffcf8338f6042e2b0a2c5f2f8dd7d'
    'gl'
  end

  language 'in' do
    sha256 '0040323ccd757e5b4ee3c4b807b5296ba7aab95399e8f6204ca33d2aa6ed79cb'
    'hi-IN'
  end

  language 'it' do
    sha256 '8b9dc561e29cbd2d144a4cc65bfa07104f2051f0a235eeec8463efe45840c795'
    'it'
  end

  language 'ja' do
    sha256 'fb96db38e605b6c731a0e0892283b23eb8f94014a5b01d7417140c6bacfd2b1e'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '100dca9c972a7690258a5a8e256f5f07b3d0e9f8e585652c0e0bf180f4e55719'
    'ko'
  end

  language 'nl' do
    sha256 '375721ac2dffc54ba1fe8b4a3c0b6eb80189a1c46d4ed5faf0dcaf3335739d34'
    'nl'
  end

  language 'pl' do
    sha256 '2d6e0dbdc80a963de33911a4caf5a565b101d596d43094d3979ab561782d8166'
    'pl'
  end

  language 'pt-BR' do
    sha256 '7d22c40658a05728ccfdb44ef47cb70e2f0cddfcf4437c81588c6bdb0c618fad'
    'pt-BR'
  end

  language 'pt' do
    sha256 'e0a279a7e5c5199836c35d9912410a986be378f535492a91e9033da303520bb9'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9eb352b5b38711b0b27f024bd7904229eb6207e128df94bce8b98941df75579b'
    'ru'
  end

  language 'tr' do
    sha256 '215e6c2ce02c91d95df306b723a5b4e94ee9e35d90666cfe1056c6281ecac641'
    'tr'
  end

  language 'uk' do
    sha256 'd1ffbb65e1185350d0401272da71c919d6a7b9280407e6075ab9f142ad27f625'
    'uk'
  end

  language 'zh-TW' do
    sha256 'a155bbf083c9bf765d948ddd128613b05da62ad3839488c97c294a96c659af43'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5ce822da0e002c78c61b97dfe7aa8b5c6f3d7913da430494a79c63353a05e12c'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-latest-ssl%26os=osx'
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
