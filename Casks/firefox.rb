cask 'firefox' do
  version '78.0'

  language 'cs' do
    sha256 '9cfb7757aecb92883ae4fea76a9c019824114841f26a353087659fa20f34b70c'
    'cs'
  end

  language 'de' do
    sha256 'e0b7267d5bf5b6d54ce80d27d3cb5e55dfa84d62de9736bc1b502e707ba9ac36'
    'de'
  end

  language 'en-GB' do
    sha256 '294ae1b1086149092daad79417d96ef4943256eaf3331ddd56a876fe847b4e22'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '69a0ae139814cc314d0c5e3fd3859e0ac9de8517550d7d32b06c57022a14f49e'
    'en-US'
  end

  language 'eo' do
    sha256 '8d7f0f05d489b3a7b9543077c80d4d300ace00242193e43767f1f296ac23818f'
    'eo'
  end

  language 'es-AR' do
    sha256 '18d03378b0cd542b0db0ba490a72f1cc543c042d497ee95eca2596b8479b0779'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'bb7122b4e855a21379914f7c869a843237de7ac034bd92a048f289a6005d4581'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '2c0542884afcb138e50c28ec39eb8c342e2b0e3115a2024477a2c4038785d0d2'
    'es-ES'
  end

  language 'fi' do
    sha256 '670e663ebc1b67da825891480ff9fd3f2d8318b6d9d735876e296aa86537075a'
    'fi'
  end

  language 'fr' do
    sha256 '90785ecec828542d8009a6b4799f1cfce47ffb3c894fe63a7fa2a6f7576bc35e'
    'fr'
  end

  language 'gl' do
    sha256 'ef73cce8678c297b10ae1cfba4184924367dc18d843c83e6d392262ddeac4cf2'
    'gl'
  end

  language 'in' do
    sha256 'f012b81790dadd68cda224f768a5d154ebb3a94a448fe586515e412aea434616'
    'hi-IN'
  end

  language 'it' do
    sha256 '9fda51b361644b3b3e1bdbc88f0817002651af719264ec55e25ff602819a90aa'
    'it'
  end

  language 'ja' do
    sha256 '77406d5b6c718c37aa02301fec960ce7f48f152a35a37794bf13e050709d26f9'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '79f9a43d62746d0bb49916a30e7727bbaa0cd9e454fb5f9db2986b1759ac459f'
    'ko'
  end

  language 'nl' do
    sha256 'e793e27c13652c4f2f4dc4441de25f840d9c45a64b49fc7047c4b0b7b3a72bfe'
    'nl'
  end

  language 'pl' do
    sha256 'dd230890dfa76de97e925db2f6fb592acf360ef3c83bb5b73c95616a3e68a327'
    'pl'
  end

  language 'pt-BR' do
    sha256 '849ad320ab1234e2c54786ef9eb8aea3382d4ec16b60b9253c5419239956fde5'
    'pt-BR'
  end

  language 'pt' do
    sha256 '4a3b9398c390deded811d38b7f21007851056b182728a63607b6bbac891669ee'
    'pt-PT'
  end

  language 'ru' do
    sha256 '2e1a75435ff92b4d6f49b66a53c686b792b25b0eeac2f4ee869f8173b2e6c872'
    'ru'
  end

  language 'tr' do
    sha256 '62db518285ce07fca00839c77bbff75e7b3fe261b2b42d26696cacffc3716727'
    'tr'
  end

  language 'uk' do
    sha256 '02c6392c3b4e358ca0bf04d01f38ef0f0ce9247f030702a3dd7c9634cff05df6'
    'uk'
  end

  language 'zh-TW' do
    sha256 '34e2ba222391721086f85cb54744318c5c3907a5ac3922477b011f347c6d4242'
    'zh-TW'
  end

  language 'zh' do
    sha256 '2dae90379183d7b3b507536c5eff7e739c1f7a3f72addcb7c7c1e6d8be3a2385'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
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
