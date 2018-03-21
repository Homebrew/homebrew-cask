cask 'firefox' do
  version '59.0.1'

  language 'cs' do
    sha256 'b18c092cde8ff115e20a368333d8cc22680c7b9561ff7d5982ae4bf0998cff4e'
    'cs'
  end

  language 'de' do
    sha256 '41556eb6e7b38ff0621cf38e46f0b6c06b02bfb7c5fd0c315f4d83a0e2a45de3'
    'de'
  end

  language 'en-GB' do
    sha256 '48579c6ffb2b4a0edc0123236af042f1aa68db2d8c36acfb1eda5316b40a4f22'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c833d8e65490a7cf87e8a66ad037b8590c036aebc39e1b01757d9b9d830d3402'
    'en-US'
  end

  language 'es-AR' do
    sha256 'aecf59db94efdfc45cd673b6b364a1f3019564178fcd24fc68ef10b07b4a5129'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'a9b0daea6f00e12f354c4c09f53fe8126d44113886768249e0ae12f9fc37d6ce'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'aea072b2f030a57da145cb531f91f8b7541c472945ce946efefbddbcea5eef22'
    'es-ES'
  end

  language 'fi' do
    sha256 'aecae47596db3e8fe63362bf91342a215d4f91dcaf355cc11212ac6af146ac89'
    'fi'
  end

  language 'fr' do
    sha256 'd2f29dcec15047911fdabe309088cac2fcb11b92c03582188ef111b8f0fbd6ca'
    'fr'
  end

  language 'gl' do
    sha256 'f900a1c010836b58d0b976849b73997de668be5cfb4b5a806c39d8547779f29a'
    'gl'
  end

  language 'in' do
    sha256 '7468d76eca141cfefae364d3866ecfb16f4898fae77bb0e21bc16d66d0df03ac'
    'hi-IN'
  end

  language 'it' do
    sha256 'd5dda2df2af0d5583fd06669885b73249cf48af1c9f702dc0a482b3ceed1f08a'
    'it'
  end

  language 'ja' do
    sha256 '25d63b70e3ace9a242399d51422afc60ca4dd557757ef098b413525106eef19d'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '5f4119c8b821c714e38747b080153a33e6c198b04da9d437eb3abc462adfb4e7'
    'ko'
  end

  language 'nl' do
    sha256 '946715dd76338786470d1aae92d56677d69266e96a1bd41023b5faf4c024cfff'
    'nl'
  end

  language 'pl' do
    sha256 '9452ce084f8f71bfdc31f26d719946f3292ed07177b162ab9098c4b41fdf7944'
    'pl'
  end

  language 'pt' do
    sha256 'bf6c6d6f67024e2aac838edfc58deb472d5167ef068ec913a1c44c60fa1083ff'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '8873740ae5cab19825cda4495b1f2db37f9dd4d0db891dd89b114e264e960d52'
    'pt-BR'
  end

  language 'ru' do
    sha256 '3e99d5781142c58edde5000e3c1e700b3dc00d16bf7eb713164a5454ea138b9e'
    'ru'
  end

  language 'tr' do
    sha256 'b6718f0cb9ae88d99dcb0145123c8f270ea2694c19a941047c340c4826d5c387'
    'tr'
  end

  language 'uk' do
    sha256 '27e5d07a30c791d49ee04fc39ce32879febcaca6e004f9b892c5a9c0596f5ec7'
    'uk'
  end

  language 'zh-TW' do
    sha256 'b8a929b74127d92acbf7a97327d1f3e07b8aa666e928341559a316b7ee778f1b'
    'zh-TW'
  end

  language 'zh' do
    sha256 'ff106dbdb25a10d7860ca77bd5289855ccd569e5a620b956f3fd43db112134f0'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '274a55a33ede0574afd2183d3873ee8476e6d37f6349e3949285065725afe7c0'
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
