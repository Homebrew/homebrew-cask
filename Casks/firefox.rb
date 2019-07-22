cask 'firefox' do
  version '68.0.1'

  language 'cs' do
    sha256 '01c841b6452620e3809242b2b2cad251b4939ffcd97a144d4e9c8162ce8202a3'
    'cs'
  end

  language 'de' do
    sha256 '5348be6ed16c5f2f55b02479223f73ed53b6bc6d5614ede2fd2971064eec1de3'
    'de'
  end

  language 'en-GB' do
    sha256 '75704ca1fcd5c9e3465a8735bcc9bad9d5f0b3870a6283ac039758a2b9714c32'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '35a2f791a1d3802d0b0b40e2d47e8b8db4cab79129333529db5f0de7b8e4f284'
    'en-US'
  end

  language 'eo' do
    sha256 '529c2b08c89cdea5418d57a5d02624d1dc0187279553468823e7a9e4b8b1648b'
    'eo'
  end

  language 'es-AR' do
    sha256 'b7df960c1d4ee9e0e9e44ed0e64c942388b8d3943925b767d8cb7149e0439396'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '5f3b6538fbe5c3baf0f3ab67b10c70b1dd98946defea7645c422912e63441391'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '97f35cd529605a94e6636ceca0850d8c2e1e3cc8d71449728206be70ad0584c7'
    'es-ES'
  end

  language 'fi' do
    sha256 'd16cf911db29aefc659c84e59039ba9885550f9f37341837b7d9a62c0d111ae1'
    'fi'
  end

  language 'fr' do
    sha256 'fde802747038087ac5e2f6a0d4affaae194917ebbf6164adbff210ff545ef78a'
    'fr'
  end

  language 'gl' do
    sha256 '8c710f6fbdeb5727d0d642d79ec0a3781d94878293d6c037572f8576fc43513e'
    'gl'
  end

  language 'in' do
    sha256 '58cd79ca1e1a882f855f97f4d6d7d082529d140a954752cc3dd5b78ab9d403cc'
    'hi-IN'
  end

  language 'it' do
    sha256 'aaf5f13f1d7db6169e4d30f2b6e36e73d5073c43aaa35979695935eae61954c6'
    'it'
  end

  language 'ja' do
    sha256 '6baeb8433a8fc0d683eec3348daabe01a17efd89ff97aec535660de0fef89a96'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'ab4d5e8b4d48f9f3673ab12479ecdf8641a11256616987b10effaaa25d43757a'
    'ko'
  end

  language 'nl' do
    sha256 '1f5eb25d86d23708e940f444871ae688568272108fb4724865479fc04720a439'
    'nl'
  end

  language 'pl' do
    sha256 'aa887bd65d99386e38291e20feb8f3c9587cf8c1cf745ca0bed02a87c418e93c'
    'pl'
  end

  language 'pt-BR' do
    sha256 '1ac48f38eb548933b385c453f22e140cfccc7100bcab00e231142f5972382c42'
    'pt-BR'
  end

  language 'pt' do
    sha256 '121de30771eaa04c430e8691ba6554a9c6e4b06dd9f501d2410ec1551e9b5662'
    'pt-PT'
  end

  language 'ru' do
    sha256 '3219ddedd82d8427c063e826ea558764def4f526d6a1612871bb32dc5786d64e'
    'ru'
  end

  language 'tr' do
    sha256 '9e6220a348897fbf43f756e3fd47bf88f37398d643194f45a2170e73ced2327c'
    'tr'
  end

  language 'uk' do
    sha256 '465e236d4dc140239ccec0ec39082e2b84bd26dae4cb56d0f038358f88b77dda'
    'uk'
  end

  language 'zh-TW' do
    sha256 'fba36d8da9e3b3f5a7b2a9d4808020e7a1b40a52c58397e4d49b0695bbd5a649'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a5e00e0ff3556f0211581b6bebe705bb4395dd8acceb0321693abd2be8925111'
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
