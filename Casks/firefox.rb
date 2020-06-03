cask 'firefox' do
  version '77.0.1'

  language 'cs' do
    sha256 'db339fd0c9198a06b4fea425db4090cd0a23169bff0ad2a90ae8965a9906e1da'
    'cs'
  end

  language 'de' do
    sha256 '91baccd3b1f1a03294f44c2cf87c12a732a89592974552ea4a33269e3029ae84'
    'de'
  end

  language 'en-GB' do
    sha256 '278facb713b60b82dab6d8eb7fbcdf8699967e515691c2f639921742fe332737'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '8816d93824644733682ed4544c9730012fde0d46d51f5d050fe7968f2bf22ec5'
    'en-US'
  end

  language 'eo' do
    sha256 '5531758a0b879ca4f324b89f3bcee8f2aa5c66d77698b5b7f806cc508ab00169'
    'eo'
  end

  language 'es-AR' do
    sha256 '1cfa70b43bfcc74ff5d158484407db797cc699d59bbc5edc147e5f09f007855e'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '0fb92f103723d40833d89bc6a8271a59cc8c5f6b934b66ac3db41ca8c92d0e28'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'fd97ae5ce1e8c514a570edfe77669904b8b08c11f496a5cc3d2ae63d076d57cc'
    'es-ES'
  end

  language 'fi' do
    sha256 'c32c6a21ce5eaa5ce64ff6fbf9740b982513ae948d86a6e1bf8b2341b0e1b7e8'
    'fi'
  end

  language 'fr' do
    sha256 '2b0fbecc6aac220dcafe0f5c974e7e1d0574857c29fb947625daaac53b9bbff2'
    'fr'
  end

  language 'gl' do
    sha256 'e6289a860391d939b8e9b037f0dbb77e005eec8796c5b2ce1d099e4b15d88145'
    'gl'
  end

  language 'in' do
    sha256 '69977fc1a4707423a746a0b4b490ecb1108962fbfe7100ed71610740ef0cccee'
    'hi-IN'
  end

  language 'it' do
    sha256 '951a4a1243feeee3b9c8fa199d5c5d05b7050ed1cee1caeda624549fcc338b70'
    'it'
  end

  language 'ja' do
    sha256 'aa2b0baf5b468a7d8c989453fc68050ba38236d9a1ade58e13f1048131ae473e'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '9d687faa3d6fd004e31d156564e2708cd3ddb4d8da21dea3273c7c36c0903b50'
    'ko'
  end

  language 'nl' do
    sha256 'd9db813c514ccca4d2ec65b860004bad18d8ea7138c78b244e285762f323ac25'
    'nl'
  end

  language 'pl' do
    sha256 '37bdd02f819eababe0106d3238953f59c2d12c0cf08934ec4baec3dec88110cc'
    'pl'
  end

  language 'pt-BR' do
    sha256 '2b5f4f269352bc02cc9a51514a476c094626957589c79e53cd263aa03b53675f'
    'pt-BR'
  end

  language 'pt' do
    sha256 'fd70be0b91021dec4d403f72392b93e511497461de8084300b7b4aa8d675a489'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1a5cf91a5cdfbe634ce3f7f62b96d51f99c75767fc0938eab4654bae6c57427c'
    'ru'
  end

  language 'tr' do
    sha256 'd40c5d773c260283fa944a21c6f1e45ceabef29b2e908e31217c4085e8de6bbc'
    'tr'
  end

  language 'uk' do
    sha256 'f4a0b8aae8a655f6e39ba6edb738f551ac55b52c38e3bbc768225cf0756c8d0a'
    'uk'
  end

  language 'zh-TW' do
    sha256 'd54696a8657b758728df2573f05769465edb614c53d956dfa510ac774259b634'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a7592d80af3b7bda655a37f9779f7357872c6ec1a4dea708f0aab02e7f344375'
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
