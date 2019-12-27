cask 'firefox' do
  version '71.0'

  language 'cs' do
    sha256 '8acacdec18ae8a6f9c6fee4bee0cc3b5d2ed64a5f7281e84d5d3216ffb2cb482'
    'cs'
  end

  language 'de' do
    sha256 '4ac2b3ea9889c3e49e3abdc899d0578ea2db1b0b77b4ff3490e450bd20cf4f4c'
    'de'
  end

  language 'en-GB' do
    sha256 'a87a37ced6efa475d3ddad3375e789f2abf5e43ae46db8d4f632c1eaf5c576ce'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4becd26dcbc3876935bab344788a4d1473a187f8bfb856c67844284000dc4788'
    'en-US'
  end

  language 'eo' do
    sha256 'b7bdb9d330a553c8efc4a36a3adf013ceaf3ce0b9956e9a45148cdf972bd56d6'
    'eo'
  end

  language 'es-AR' do
    sha256 '82b2703ccd6119324e67eaabcd62f07725dd1a8701485e392ef69d55545c65ba'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '4c4134b9fd2044c6b28e2dd8e6637db00fcad0c2d3ebdc81d724bbcf3e2e5e79'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '582a134eadc6cb02e87b37c13e39d0714e033448cc6a4d7a65e727ec5918261e'
    'es-ES'
  end

  language 'fi' do
    sha256 'a559efa6326405fb1cb05629f3aff9442c68e43f70c64241adda4d14c99b7150'
    'fi'
  end

  language 'fr' do
    sha256 'e52911a52c6de2dfd2ff4c4a5bb906d361a8a8f29471d03af32c07a3183a32fb'
    'fr'
  end

  language 'gl' do
    sha256 '527ff98ebde60bc6b6422066fb976439766c86074bfe1de1e80809558b38b9d7'
    'gl'
  end

  language 'in' do
    sha256 '820210ad0db5935ede8b5ae08675df6a167b057c513a3f1c3a3f96d22aba84b7'
    'hi-IN'
  end

  language 'it' do
    sha256 '02f566f89e91a1def80a7a42dc820ac937b5c76e68675f900c7ad519cd22bc5e'
    'it'
  end

  language 'ja' do
    sha256 '9a25b8933ba0ac5daa5e94456ff218e55825fd86ba433e863cdc6789fc91faf3'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '022234cff0c78f382375c93649edcaade3fd02c3e3c09ef832715930ddabaedc'
    'ko'
  end

  language 'nl' do
    sha256 'd3f9a6199bf12d006587f0a3d92bd2d969ff70c66681a3fae786423f1c745b4b'
    'nl'
  end

  language 'pl' do
    sha256 'c64d01ec37cc641c40fb096a96425c83aa5c3ae12656b9dbaddf5b7adbfda5d8'
    'pl'
  end

  language 'pt-BR' do
    sha256 '2ff46811bfd86f72299f6298ff0696a67047eb83f43287911f3accf177ade5c3'
    'pt-BR'
  end

  language 'pt' do
    sha256 '62f7ae98f803da831982ab1df881045bc31272456a82562d6330cb070ae00c1d'
    'pt-PT'
  end

  language 'ru' do
    sha256 'e101c023f8f29fe9f8dc1802b7d1f72625200a7675d77652dc3696ca23bc3204'
    'ru'
  end

  language 'tr' do
    sha256 'caf9a6b5e13966c719f7e78cd68e875b6ea03d8fdbe8c92e49bf1d1a74efff89'
    'tr'
  end

  language 'uk' do
    sha256 '2d5963f7f5c8d255e6ce46171aa4768da3cbd90702a0cae18a77ab2f0b676e76'
    'uk'
  end

  language 'zh-TW' do
    sha256 '33b6de17924f47ae311fb81141fe053211cd4b5531f792021d00d6d1e982801f'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f57957597ca9391750c106a8bf01cbd8583d013e9d76f28dc683999c210c7f81'
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
