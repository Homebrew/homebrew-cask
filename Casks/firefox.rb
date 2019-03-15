cask 'firefox' do
  version '65.0.2'

  language 'cs' do
    sha256 '42d016a1d27c762ca246d557d03a47dc7656df32b58f41ae71bd829eb583a334'
    'cs'
  end

  language 'de' do
    sha256 '8f700d7e067e49b6d9f26135978936a78fd0b34abd38123f02b8661200079653'
    'de'
  end

  language 'en-GB' do
    sha256 'c52f725fb7575bec6f62f290cae84499aaf020fd41b484ad35a3ef3714946fb3'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '8eeb1fdc8bea3465dc4a9914957185fdf15fd092ddf57694b7f3476d72d42826'
    'en-US'
  end

  language 'eo' do
    sha256 '60c4fa0007b9681087daec2b9869c857deae51576fb546e202848b88f0a65a86'
    'eo'
  end

  language 'es-AR' do
    sha256 '340b7834614ea52fa42112f7041bdb45dd41d7658c06e73d11fdf3676ff6b2f9'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'e21e655ca498cea6b98b9152058eada58b6a4aafa8c4fd6fde750a589ab4ec36'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'c844a935f972f781ae5a973fe7b32770ab4368c92b0b76ae390b1b74131aad98'
    'es-ES'
  end

  language 'fi' do
    sha256 '26ebfd4d9d837971c10a98d3657d13c0b7f40ea6fc4ad24d9b188f6e7c9f8fde'
    'fi'
  end

  language 'fr' do
    sha256 'a662b48d76d45afa331176701b5025741dd856c4ebddca5c35c8b0492cc37c6d'
    'fr'
  end

  language 'gl' do
    sha256 '7217228fbde222bc9c02435b0866ba56c1b1f4ba59acac6d0cc4e1305af03eca'
    'gl'
  end

  language 'in' do
    sha256 '6fd6ffdafcbab4c8f066724bcd7258e7d11fdfe433b253213307513bd29aafce'
    'hi-IN'
  end

  language 'it' do
    sha256 '28e1851b14a6f35320df0805bb83beb5d0fbdb1c9882d248c8681f0851e0faa7'
    'it'
  end

  language 'ja' do
    sha256 'ea59bce5cbfbbfa4e870aa5d4e0bc408401134659353ea14b7c1580200e6e351'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '3eddc98764ae051f3238923f054373dc75d13205ae5829b13e7aa89832b9a8ec'
    'ko'
  end

  language 'nl' do
    sha256 'd95191565e10ffd894782c64c0be9beff77c6d451acfdeef5a0f635f56f61b41'
    'nl'
  end

  language 'pl' do
    sha256 'c8490dda204fe0e7b578cfe94a3d61f8c5c326d955c1c42b851710c7fa34bf49'
    'pl'
  end

  language 'pt-BR' do
    sha256 '9b9a098758afac2fbabfef6d3180011a641991baf628223600c08ac6f161e888'
    'pt-BR'
  end

  language 'pt' do
    sha256 'e9b39a7fbea99ee1209db0045e6d3e981d75f35f473063238940bf5f999a5090'
    'pt-PT'
  end

  language 'ru' do
    sha256 'b4de7dcd4a8a22df1394a31100e43cfb4a022bdffac8808602018a0f4eb4b55e'
    'ru'
  end

  language 'tr' do
    sha256 'e84e25eab6e9921ee018bf345e4074dca5b4c3e293020bd0c8ceed851edf6c1a'
    'tr'
  end

  language 'uk' do
    sha256 '20560c3c99400242e7653ec5657932b01c9aaf691280cdc8bd9560e89dfb17f3'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0c4228c4c6e5ca878033604de1af593fafc71e0e666a321dd32a820e18c9fa76'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b1989d5d696ad5f4df88a6c2f92486d536d210495f3ec81a590f90a600cf7305'
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
