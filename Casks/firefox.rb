cask 'firefox' do
  version '66.0.5'

  language 'cs' do
    sha256 '036f4108077dd1e9a42c90fe8ca27822cdfe0ba2b61795999bdaf0f7b132c03c'
    'cs'
  end

  language 'de' do
    sha256 '6e69eaf5f17c6ec39538245e09cb28dff49c87b2fd4c3ebff9245872aec7fbb0'
    'de'
  end

  language 'en-GB' do
    sha256 'e873dbdd816a55c6ee8873f005708e48f7b06fd2d40d8ca229da59611d3e89e0'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cabe2fe0832df2ef1c81a953c28844d78c38d5046ca7cfbaf6601d1c1a465235'
    'en-US'
  end

  language 'eo' do
    sha256 '7c6bc5983c2775d111819040ecca084a386a08af3cde50119e0be7022504a01d'
    'eo'
  end

  language 'es-AR' do
    sha256 '2130db562de6c763ce3708f813f5d2a5d93986604e5f71ddf12279136d572dd9'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'bb3a641113ab77e1fc8b2c20143e70f3d9568b8b8d92aa6db90e133d61e291a9'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '32e0cbd4292457f11e31f1b4eb48a2bfe51ceec7577bc56ebce174062463d143'
    'es-ES'
  end

  language 'fi' do
    sha256 'd0d312b60d591ed4c81bc6fff110c1ba4fd1c5d571362243b7518dd65264b894'
    'fi'
  end

  language 'fr' do
    sha256 '8a0b7b6370a2e5d4856888606ee5ff5442f169afe8b0d0d9ce962e88593032b1'
    'fr'
  end

  language 'gl' do
    sha256 'a153979cd4f755e63fe4f6c22bca3d4c4d908ce267c5fa5083f45afbda371e45'
    'gl'
  end

  language 'in' do
    sha256 '3e456dbe33fb4a5a8aea8fc4bb870d7429b15be505139de6042eec352a3bcf00'
    'hi-IN'
  end

  language 'it' do
    sha256 '4cd34d23b8918761877dedfcc1e825f18c10cc429db0d2a2c9889d98093f895e'
    'it'
  end

  language 'ja' do
    sha256 '508cf240caa09b57f02903c631bbb3f0fe89a6fb50982769251ffb40bbaf1006'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '200375049d18675bfb876d90443b4e6118ac7f83e75530b7d1aaf61220087133'
    'ko'
  end

  language 'nl' do
    sha256 '8cb1520ee2e0aad8585a9eafb9b1943778b77fe4180dadaff7fbb1e714b02549'
    'nl'
  end

  language 'pl' do
    sha256 'f5e0f2648017a938b0256b83b6eba2cce5b147239fb09228f98fc60a546c97bc'
    'pl'
  end

  language 'pt-BR' do
    sha256 '66bc98cffee49e452f0162df467b5fc4109868f26211e926c6c7a65b14799474'
    'pt-BR'
  end

  language 'pt' do
    sha256 '118ae9ed8e6573ac742a975c6028e10758d05a79ebe4ba8734e342b333e5eb12'
    'pt-PT'
  end

  language 'ru' do
    sha256 'fefb4c8aeed27b3e535308974e06a22c34942768bffbac48dc0cb2fbe9d7d0f0'
    'ru'
  end

  language 'tr' do
    sha256 '70d68ffc6ff97eec5830bebfb2fe17be762d8af0e2202f632116a5321e057a9c'
    'tr'
  end

  language 'uk' do
    sha256 'afc247e505ad58366c3ff05b50d015d3cb8655273034dd48af4aae66de96d0e9'
    'uk'
  end

  language 'zh-TW' do
    sha256 '01718e17d3a3f6e9485e3d77ed286e9a4d5a8103a23064c99fe08c513a85109b'
    'zh-TW'
  end

  language 'zh' do
    sha256 '6ea30a7dd39688b23fce04d45835e1f284df872b6a43a8e23eb373a56f4aa40b'
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
