cask 'firefox' do
  version '73.0.1'

  language 'cs' do
    sha256 '9b0b754de727cb9085de2b88ede009df8ce5198524f9a5312fcd63d14f7372b1'
    'cs'
  end

  language 'de' do
    sha256 '6c043c80dcb7a3ad2dfa62421203fcfc99701df05874e70b38f0cb5cf08c5760'
    'de'
  end

  language 'en-GB' do
    sha256 '59125d92079da7367d397036af3e7efee363782f836946a65b2274ac9adbf8fc'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4a017e616121e2563acfffe8bb1018f02490ee4506e1e56a9c3b2acdc660f5b7'
    'en-US'
  end

  language 'eo' do
    sha256 'e36187087cd57e2b27002d6452d01781199e4c108c12921277d13602d44bf028'
    'eo'
  end

  language 'es-AR' do
    sha256 '1c6c5c983a43dba260a34423538274f7d749f6a004a37c9b863c94a4f491d547'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '7900cb8712d709fc9057ddfef8e19b81d856f9669a78a9a3eff70c3d60d5d473'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '9951b316234cc7f6c8e8db6f788ebfaec4c1921404cc3ad8b8028df1801d141f'
    'es-ES'
  end

  language 'fi' do
    sha256 'b74f879b7d77faf0c43039ff4f2254c790ca1e694913d19526cf9dc9d9d290e1'
    'fi'
  end

  language 'fr' do
    sha256 '7d867698502d679568606e47c9f28b67c96bfb8060d262c69c7bc7a110812632'
    'fr'
  end

  language 'gl' do
    sha256 '67bf8176a9e6159df6fd14bca7942fa4687f78298705bc1c0e45fb1e1ce2feab'
    'gl'
  end

  language 'in' do
    sha256 'd67b875cf2f9b3575d070c7ee6765f1dea4cb24ab6fd9442f8ac7c9448fe0cfb'
    'hi-IN'
  end

  language 'it' do
    sha256 '820d3a3c1d7aca768dde2f553fb8c3128f4b01081b856cea34dc7e51319262c1'
    'it'
  end

  language 'ja' do
    sha256 '5ff3ff0b65f477c48d4f4288e8fade623e76d935b92b86ca64847a50c7e71437'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'c86afa8721cd2e12f49bedbcb884f3383ceb1ee3d072fb5df137e681eb8377d9'
    'ko'
  end

  language 'nl' do
    sha256 '88a481a333539f652a1f8b1b5a9f821fdd9aa25b4662d16e251103c2fa82425a'
    'nl'
  end

  language 'pl' do
    sha256 '8a4115ae1931debe79793ab6e8d2edbe9a79d02ece766ffde3e972f46481be3c'
    'pl'
  end

  language 'pt-BR' do
    sha256 '250d4fafee9599df377a97663242af007fae78be3e193a989d797fa918c7e716'
    'pt-BR'
  end

  language 'pt' do
    sha256 'f4767825bc327fc7ccc8589bf03d89dfb11bb024db7965ee72535857f0bf4326'
    'pt-PT'
  end

  language 'ru' do
    sha256 'd2f99d0ee65b0d75d34dac082b5f76e731cffbf946ff44bfc4c6b6b3d7e02093'
    'ru'
  end

  language 'tr' do
    sha256 '1de337c19ae4840c0ca5efe52da2fa670f087c077dbd2a06bbb172294ce80acd'
    'tr'
  end

  language 'uk' do
    sha256 '97eaa05c9f5d9aa58cdaff6a452ea382560fb0589f86a91f488a4e202953aaba'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ca0ae706bd6a2a66ee4b5c3f688155372b57d3729854db902b02f1696be35c59'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2f89a71dd1c936c4bc9f4610b611465b57ab81bd2a87ac6b6bd7b16acd8794a5'
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
