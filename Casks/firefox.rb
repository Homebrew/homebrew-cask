cask 'firefox' do
  version '62.0.3'

  language 'cs' do
    sha256 'ca31dfc154cec27ba69cb6cfee7b24649ac880f0a077495d543fa64b1bd4c10c'
    'cs'
  end

  language 'de' do
    sha256 '6adcc21cfd9e64f6effe60675028936ac291d90c5827ad81e67cab1396a63224'
    'de'
  end

  language 'en-GB' do
    sha256 '6b6671e8de9b56c9c974285ef9c087b7687032c33449359de2fd52e86581a43c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'fcd04d8695d48fa11b59f2cf49f2888f41d9c9c0eb0754da07b4d438ce442d51'
    'en-US'
  end

  language 'eo' do
    sha256 'ee166d571c8f7081cd1080770ce382d823c83ecd5b4b6f4f8f00a772b1e4597a'
    'eo'
  end

  language 'es-AR' do
    sha256 '7c853c2f910fe41e88bc05e077ff964fb1678b638db0ee4afe36b687e6768eec'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'acda7cd035da887747fabef180d258fc13382dcabbb623ee8a177c6aecdc833b'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '0e6141991e9a6a9c479096f937222cf8220cd396259fd0f084741ab853a75eaf'
    'es-ES'
  end

  language 'fi' do
    sha256 'b87392593b5d0c5f0a8c2d8d92a64ccf6d73117b42c57e74c86e1de5982eaacc'
    'fi'
  end

  language 'fr' do
    sha256 '39cde519e15a64b0a0ca0e9f7adcfe78e2e76e41d5aac7289a40b6eb1bea74e7'
    'fr'
  end

  language 'gl' do
    sha256 'cca2389d52dd843576d76d57a96b583517035e77f292ed557bd5ae1ca3fc7de4'
    'gl'
  end

  language 'in' do
    sha256 '6bf246b765f3f9d554040e2f8d84a1656424fd52d8d6ba4e99263900103bf779'
    'hi-IN'
  end

  language 'it' do
    sha256 'bb06fb3705ea04bca84f1c27ed8bf84287f885a97fd8eb6fe9f310348fedc48b'
    'it'
  end

  language 'ja' do
    sha256 'bab039e5744d959c56951c9902fc5c246c31734f60897140c7ea25f7fa8159ff'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '2a9b56d35f8fa27309d86746048fd2c8c14d39921e9211054b08abdd4b71c4f5'
    'ko'
  end

  language 'nl' do
    sha256 'b59b062e634d4cd462895fb47678d8789399e9c3790a802dfbb6ee9679c5f9f0'
    'nl'
  end

  language 'pl' do
    sha256 '77b51875daa1f3b32b7322471137bf3d8ea7812859b1c2ee83b66f60606eec9e'
    'pl'
  end

  language 'pt-BR' do
    sha256 '88160e77a7be2951159d877453c104cbf90a46e09bb820179ad3eb42d430bc93'
    'pt-BR'
  end

  language 'pt' do
    sha256 '1d71b7afd7896baa6f6e27e069f215cb25f9d7fbdf4d4e1dce3a845ea015a27b'
    'pt-PT'
  end

  language 'ru' do
    sha256 'a629a9758e4afb7c24fe1c7cefbae30729d6621474617c89bdd8fb6bd01747c1'
    'ru'
  end

  language 'tr' do
    sha256 '866cc54ff005de56e3be642139e717f89ad9ab73579a196d17640e7414f7ac6f'
    'tr'
  end

  language 'uk' do
    sha256 '80ebef75c70e69641ab74ffc8e629f7a04167c9d02a3d5ef4ef405ea3a716093'
    'uk'
  end

  language 'zh-TW' do
    sha256 'eb0f6c830d9a4ce9077ef693ede1089ea8df30ecf0044cc5f7e8c5d4219cbfa5'
    'zh-TW'
  end

  language 'zh' do
    sha256 '36794786ce002ed0d72c2c8942b2259f19e72da83fc4e79545a867ec5a0585e1'
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
