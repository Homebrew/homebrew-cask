cask 'firefox' do
  version '67.0.3'

  language 'cs' do
    sha256 '801237d9e155b1857e4f7cec27cabccfe1bd57bc8b3fbcb6085f6ab5c6a2e71c'
    'cs'
  end

  language 'de' do
    sha256 '3939735b16c20339d2205aec26cfb5f6f5fd1704c052224e9fcb08e5dc1ccaab'
    'de'
  end

  language 'en-GB' do
    sha256 '9bc1ed6acca08f96b8c5a2d20ef3c25378929dd7009edf8676ec7bc421581366'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ed76929c23ff6587a5d95afaea4a29b0b4558be644a877feff9b5818705b9903'
    'en-US'
  end

  language 'eo' do
    sha256 '3a3c481ace56ce1261da71e463c8a88491fc470910a40d8bbb5434f5559299f9'
    'eo'
  end

  language 'es-AR' do
    sha256 '8d926da3abb416ed5e4d43ab8612c959424ae825d0c5797b6db07ed8e78ed5ba'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '5cd235f5adadbefab30584345b7fe832b57734e036701c91a76389e3a0d66335'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e61a6c7f6658969d3c5c3bf202abe559bc72230622cc58194c76dfb08f7c8197'
    'es-ES'
  end

  language 'fi' do
    sha256 'c15db8309a2d9e32a4c5aa3cd638ce18d9c56a9c84fbb957c97aa0e7a3d9d317'
    'fi'
  end

  language 'fr' do
    sha256 'a2b32ca1328cd1d3f62f073c97ccdf6704c1beb73d8a828760ddd62305788a41'
    'fr'
  end

  language 'gl' do
    sha256 '4eeb1666d8ee9286915ab61d51eaffc64ff74ee051317ae48cc1be2771302c44'
    'gl'
  end

  language 'in' do
    sha256 '2c3eb4ae54c9e8f546236f2e415cee25b4d52df2566fa88d776d89ecd184a5fb'
    'hi-IN'
  end

  language 'it' do
    sha256 'cafe00e3c80528addad7e193957553b12f6f80b67462fe428b7a25bc73154128'
    'it'
  end

  language 'ja' do
    sha256 '7d3a2e1fdfa1eeb7617716ccfafddefff1efa37a7f8821ff5d217094fa3cf8a8'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'e1c773c6874a8158fb27e7eb4b1eb313c248daad9bc1a446e30bf2adcc2b649e'
    'ko'
  end

  language 'nl' do
    sha256 '77f4e72b300e0628eaa0ea7b4675beb16baa0dd486909b7be46639ca4a5875eb'
    'nl'
  end

  language 'pl' do
    sha256 '3a571449dfbcd0f92e01a9679e36e9736e098081bf448ff90d6e42f9da43acc6'
    'pl'
  end

  language 'pt-BR' do
    sha256 '3db40f60719efc5595271e9b1526fda89b40f1d86381479759098321b5d4509e'
    'pt-BR'
  end

  language 'pt' do
    sha256 'e6e01953afc8124990a6f94d23daa32bd31c92a306f76c6472924a482cc5559f'
    'pt-PT'
  end

  language 'ru' do
    sha256 'fdf4ec8e3e63b3c2e0f26d50424fbc8cf8aaf9e527bdcda65624692cf5f83556'
    'ru'
  end

  language 'tr' do
    sha256 '9a27420a0388ce1a50d229ea69ff87d62b9c8eb8a94c90d8e9f0c3f7cd861c35'
    'tr'
  end

  language 'uk' do
    sha256 'a2e8b1b53e083c5e071753a12963f388ec7e3fdf4b4958fac3a5ecf2d62c6ee7'
    'uk'
  end

  language 'zh-TW' do
    sha256 '4d3452102b3d3b1d7443cf06bb6b09602c565b2ab63f2457f03ba7d0f840d121'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e7ecc53767fd806edb1bf0dae405316d69e054aa45ac9673ebb51a9a57a65b20'
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
