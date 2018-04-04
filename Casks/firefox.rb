cask 'firefox' do
  version '59.0.2'

  language 'cs' do
    sha256 '9bfc475796f0a7ce9c67e0d45ab02ce35d2bad1e42742c7d3df7e84b840d3d9e'
    'cs'
  end

  language 'de' do
    sha256 '5c12e914c954efc5829c5925b31cd7e5efaac93186defea65e940386a4013e20'
    'de'
  end

  language 'en-GB' do
    sha256 '642a87311a0f264a165c41a3599c681e7272c2dc43a3c1f71ea632223f9a5ad5'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'de65a85080f8a9423aba4c1ae498687568ef948cf97dcc6dd666c6ee67480a0a'
    'en-US'
  end

  language 'es-AR' do
    sha256 'b2ffac92822345c22cf4a836a7515ed777ac45b40610088537b479abfa6b5da0'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'b404cca27308da6a68c55cbe5717275ddec533773ca0ccfab055382d4f6344ef'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'ead883c653103e05dcce0f45e214a1d577d192f2389cc331bf57939a9822abea'
    'es-ES'
  end

  language 'fi' do
    sha256 '6615ff79b3df5f272ad9cb86ebec9513cbba039113469638c83adb5a79513d13'
    'fi'
  end

  language 'fr' do
    sha256 'a77916f283eb8dbb1bb262f3487776b90e4216605ad6fac3c23b18c4a91e9044'
    'fr'
  end

  language 'gl' do
    sha256 '6851d4bda928b1de1d30c8bb2b43abec15e355e1d9e4dccdee8d6e351abd5f82'
    'gl'
  end

  language 'in' do
    sha256 'd73e674203c2878477e2a32bed417d31c74d83b68bd65c4d0739925986ff294b'
    'hi-IN'
  end

  language 'it' do
    sha256 'cbb861febf46d577c69db78e89b0d99ae3b52c9e2e367f24a8f6bc4bef80083f'
    'it'
  end

  language 'ja' do
    sha256 '1bc270c28297c510cd42da26d8908516ef78a41e8472eb37623554b81bbf27db'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'dcd6aec3ee37741593cec63bf70aa058517ce4ed22293afb355114b308d7c6e3'
    'ko'
  end

  language 'nl' do
    sha256 'd53356481bc5db1f541cb26872984dd68348f81c3aa19d185b1aaeba8459a6a3'
    'nl'
  end

  language 'pl' do
    sha256 'd05c2474e49e0951bda965d721870d2b4030a636a5ba819d9ba7ef2f35e2b1f3'
    'pl'
  end

  language 'pt' do
    sha256 '8aa511e5587fbc2b065d5e4763eac310a9f6164241120e96021cf64a0efc0eff'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'c2ed1a853cf5200ff7ba63f0ba467f346c137d02ab14071be8dafcf4bd3af7f0'
    'pt-BR'
  end

  language 'ru' do
    sha256 '420b845283a3a0059d540d41903807609c369aee8988361c60b50ce26414534d'
    'ru'
  end

  language 'tr' do
    sha256 '0e60069e8e99d3c83da2c33bb8dcab42694c73bd87658baa348abdbbfc3e53ef'
    'tr'
  end

  language 'uk' do
    sha256 '558b51c5c9d8dc4a87760e852f75327a5fbdb6aaaf36347ee5572b5667600424'
    'uk'
  end

  language 'zh-TW' do
    sha256 '67484ec4860c9750fa3e2666980250c98f87e072bbe36cdb674b3c9913a08c4f'
    'zh-TW'
  end

  language 'zh' do
    sha256 '59dc5e0137cf50f994c8a5fb5e929a50493305e1e3429f6e1a8ea87d04bda77c'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '88cdfa96ff4ee8de0423d48e434efa92a167fc1b53f88506a080362fdf4537eb'
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
