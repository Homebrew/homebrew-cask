cask 'firefox' do
  version '63.0.3'

  language 'cs' do
    sha256 '9450fec621dc6eb202a53cfaa63ccd6ba9f3a713a2970d97be4aa41fda398cfc'
    'cs'
  end

  language 'de' do
    sha256 'f58c762e58fc56a232eadf0eca4782e40b50a5d98d37b1250ee8b3633aea462f'
    'de'
  end

  language 'en-GB' do
    sha256 '1ac96daeec688c3ce38acb4424e702dec4ef2d1aa93884d0d0e33dae5d08a92a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2f201a7d1a3bae2533546b892cc43dcb9d6808d182174d64c53cd84fd0d48211'
    'en-US'
  end

  language 'eo' do
    sha256 'f0b60f91a4be8de17b52a1823594ebf5fdc1fba4551f962b0b5b39db0e78fa66'
    'eo'
  end

  language 'es-AR' do
    sha256 '40ac8582de104d3ff3a052025fa3f398faadd583f2ff48986e7b2c3fb373f3d0'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '322e19211bfdffc685426fb51cc481ae0dda2c642553543dec5f5703146d4a10'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '058602532d92fd8cfcf482b81febf24cbab75de8469cd30a70cbdec4dfa7a9aa'
    'es-ES'
  end

  language 'fi' do
    sha256 'c750d3622f9d3a33ae95cf57646dea14ef0e8036ee8b97d8df0c592e0dc533d3'
    'fi'
  end

  language 'fr' do
    sha256 '8ff3df1143e3d9ea1ccb51e8c19bc7262221fdd8112e8f10a91e69d2497bc460'
    'fr'
  end

  language 'gl' do
    sha256 'abed37053514681ff516b7fa7f44b75af3fa543b8c7e637ece98b64f28d3e012'
    'gl'
  end

  language 'in' do
    sha256 'fa5551c2c1051625052db645f2c77e384f1d2b85cd8660dbf86e199c409ccd28'
    'hi-IN'
  end

  language 'it' do
    sha256 '2d1609d3b1d64a63249b6068ed4f9f685b5ced67634d536f0ce15ea9658b4b07'
    'it'
  end

  language 'ja' do
    sha256 'dfce9dd9227c1a5cb2bada63b0e3f83311fd6e1ce44f542b30254a94451bb611'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '40ea92fc3e50da115d641191cc85cd867e9468effab8c5a23106b6cad7508592'
    'ko'
  end

  language 'nl' do
    sha256 '9247ae64337a3d4f626b9816d9b9c029f60c749e64ac268a2c87bc39dd6fe587'
    'nl'
  end

  language 'pl' do
    sha256 '1f0365689c37946d16f2bd9a8bbadd546793b2cb03695284df568683108c269e'
    'pl'
  end

  language 'pt-BR' do
    sha256 '4fbe910924199b07536b775a7e08f31532f6acab76379698e9cdbfeab97af55a'
    'pt-BR'
  end

  language 'pt' do
    sha256 'b783ea15873678deee32fa16839c50a7db9f2fd381e26f06f335374b67ea8659'
    'pt-PT'
  end

  language 'ru' do
    sha256 '62ffa608aa43a691a0176f5fef4a49540551f51fc50b7aad718fdf636dd63bf7'
    'ru'
  end

  language 'tr' do
    sha256 '14a85281054331a8fac58c368f5ebf39e44adf95bf463d43770308aa5dcc54f4'
    'tr'
  end

  language 'uk' do
    sha256 '175e4e28a7c3325eb7958440a590a8acb53f61c8ab774f3b7fb8434ab1376ca3'
    'uk'
  end

  language 'zh-TW' do
    sha256 '42bae58415c6de7c5abd1c839df767cb31ce618d088cad8e7f31bfe179d7e817'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1a60d4ac20b2238e34f549f382fb57df688f90af33bf62408928668b83608f2c'
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
