cask 'firefox' do
  version '68.0.2'

  language 'cs' do
    sha256 '09b8360a9b9b3a0333ce11e00b94000c574414b8cb1df86d47f7b241d652c28c'
    'cs'
  end

  language 'de' do
    sha256 '858dc4dfec4e1ddf7f933a53f672d5ca617fb7bf1c63dc9bf9d04dcb677bd1e9'
    'de'
  end

  language 'en-GB' do
    sha256 '08225fae1458a81b08ca7232b4cfa927e9178d53268b70343f81c77b120e252e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '173440ca6147c6e1eebbe36f332da2c4347e37269152ad55c431f6b0d7078862'
    'en-US'
  end

  language 'eo' do
    sha256 '7f1e21049a1fdb51d50af55f96862d7428b302b96ffe300068670c514457e69c'
    'eo'
  end

  language 'es-AR' do
    sha256 'a27c824626183a6b2df800e7d43605937a0768708df8f270cd7036c76fc00b7d'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '9c6e53534b5c03119fd9cd2312d9f2d58c147075ad396b65afb9e39de142ad80'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '6b79277e0832d8795ef9795095b2f875103133c7259bad07c3bb5e2f11e27727'
    'es-ES'
  end

  language 'fi' do
    sha256 'bacb70dd73bb356485f1bfb924a63897c9a5738f4070d02e8e15feb22f9adf64'
    'fi'
  end

  language 'fr' do
    sha256 '1193355f14df89b158d7f4d4f3b2e0ffac1b901e09b0c2b08a8e5fd099e54fc1'
    'fr'
  end

  language 'gl' do
    sha256 '20d1c70d4ddf5ef691eb39318808c89621d168330e7a38fadb7ace48d39b2a0d'
    'gl'
  end

  language 'in' do
    sha256 '646f33ab617a322c08f6d486f7446c282b34f1bb61794ded47bf30d653464e06'
    'hi-IN'
  end

  language 'it' do
    sha256 'fe3c4447e3ff24f2546f30acb9bcf7789bf09c7fc91016d9b6e5f4fc3bc6a2fa'
    'it'
  end

  language 'ja' do
    sha256 '2749d5baed4f7970d398b2a560f7f7e4804a689199f8f2ee3eb3c3fbd3318160'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '35b9ca59c4027b8fac3150c5dbdd5b4ba2195d4d3226ae1b0e3b3461bba35530'
    'ko'
  end

  language 'nl' do
    sha256 'a98c874c8a9b9a13ba3ab489ad79154fd9cfd86a3eda186f766fbfe5fa1664c8'
    'nl'
  end

  language 'pl' do
    sha256 'b49369de1b467eb3bd423a7bd04a993eb1e8a93aeff7a3240c6039624295d361'
    'pl'
  end

  language 'pt-BR' do
    sha256 'be6bc59248867d624100e20cfb4bc46117b429ad816e5dd283ad9b7f483029df'
    'pt-BR'
  end

  language 'pt' do
    sha256 '44873e2d31639cfab497074f4c6528fd82737bdbd290bd89ed3fcd0b94ac9e39'
    'pt-PT'
  end

  language 'ru' do
    sha256 '44826483358466453ba76253818aad28f9acc0603fda44e306198474d7f27eb8'
    'ru'
  end

  language 'tr' do
    sha256 '7625f5ec8f4d154e84d0096a064d10f465e23359d515adc90bc9ebbbe100e977'
    'tr'
  end

  language 'uk' do
    sha256 '9272e71ac470f040431ad11e97a7a36a18826463648cbb83fcedc37b855e340a'
    'uk'
  end

  language 'zh-TW' do
    sha256 'bc8dc655199f21184c955e908fe43cccd1dd8eaa57b6296321906e7a6b82abf1'
    'zh-TW'
  end

  language 'zh' do
    sha256 'fd3c7c59d253ef5335c63888b931b81198368666ad706b1dd159356ea4a05dad'
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
