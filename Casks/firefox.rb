cask 'firefox' do
  version '72.0.2'

  language 'cs' do
    sha256 '8b0189e7d78925f980811c165d4c98911cdce7ba06a07617e424b5ccc893a95c'
    'cs'
  end

  language 'de' do
    sha256 '36ae245bf72962e6a1c69b5e90f03e2fd9cd4b16b0c721a8ed2ea910fbadb052'
    'de'
  end

  language 'en-GB' do
    sha256 '14684d9d2aa21982031b85c6df11670aa653eb467058bea37a9570f459afabcb'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '871cee00dadad1df384964d7fc33593e3987b2712329de0e0cdf8ef6c6d442c4'
    'en-US'
  end

  language 'eo' do
    sha256 'f3adc65c2e2e5552ed0faf9dfd1b148ee80e448358d1b6ae59fea1f133764c6a'
    'eo'
  end

  language 'es-AR' do
    sha256 '18514cfb9efe861b3b145c6cb1185d6046b9de285823557743e3d4e590319873'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'a6bfe529a8bac0e1355f79b6605598c1a5fd6b0ddc3144145c911a470f073ea8'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '8529627e2be6048692ac5f0fa271bc84a8050a21821cc3a6b1f9220685d2a9a7'
    'es-ES'
  end

  language 'fi' do
    sha256 '4448c2eeb0a4102ce3f85a33d95b4a233e451eceb395f4e30eae11acc9fd8d9b'
    'fi'
  end

  language 'fr' do
    sha256 'ad84b32f38729a37862d2b05585b84c1f1e490a455934180c7f302761d61a99f'
    'fr'
  end

  language 'gl' do
    sha256 '3e41cd2eaff3d0f96041082d16c095a6e101c422b7fadef1606870d9fc113ab0'
    'gl'
  end

  language 'in' do
    sha256 '2d28074fa38c62a398a5ebbc0b120b52638509d30c438d10bbed06c3a44c1bc2'
    'hi-IN'
  end

  language 'it' do
    sha256 'c3850f4d5242d8f73a8ca826018afa2b518944897a9d49cb847816babf153696'
    'it'
  end

  language 'ja' do
    sha256 '0bdb4d1927160a03fdd64a52852844161192b58a4fead69d38084be9a9301438'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'f6be3ef81e0d3e7f722d5227d91c3bd38d81bf36476772c187fe6da9acfa1e2d'
    'ko'
  end

  language 'nl' do
    sha256 'c23c5be7714862b1444944bf73c857b2812e4eb1e34155438ecf10a2ee28956f'
    'nl'
  end

  language 'pl' do
    sha256 '4d5e361c4932441f91bb4faf085b1c443fe36c015f2d7d83cbf5cca037dda16d'
    'pl'
  end

  language 'pt-BR' do
    sha256 '892f13a0a133265e3bff9214164ec766ec5218149195a9820bf3f056577c7e0b'
    'pt-BR'
  end

  language 'pt' do
    sha256 '7019476b9bb58c86330021527a06130a4d6a8bab66d4c6c1dfaebe85f14afac9'
    'pt-PT'
  end

  language 'ru' do
    sha256 '859bf0b20fd61195251edfb336fb483bc95fb1cfde66f0689c9641bdefafd4fc'
    'ru'
  end

  language 'tr' do
    sha256 '4169d0c4241cdd88588aa4c93744bd2eb7b82bd43573b732e5f1ba93dec699f3'
    'tr'
  end

  language 'uk' do
    sha256 'f4877e916ae6723709f716525fc0650c747c544232a578fb837fb39772daefeb'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0535a4c51d3165dd01331288b364e4f66be357db204dd64464523cb59f0ee07d'
    'zh-TW'
  end

  language 'zh' do
    sha256 'bf6c6eca7a139b9e9f04e3041e4f41d6bbd620bd5abf5e42fca6b9bc498b38b5'
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
