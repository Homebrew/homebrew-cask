cask 'firefox' do
  version '66.0.4'

  language 'cs' do
    sha256 'd2964140fb989e6d1ca1900153accb44e472e30d24e522063b799c7c5970853a'
    'cs'
  end

  language 'de' do
    sha256 'ad64113b763693183855765070591e81e54df15a3513bd4c303617d64b79cbc2'
    'de'
  end

  language 'en-GB' do
    sha256 '0280aa3fe15455c6a70f94e98f2143fe06871e4ea40b72cae65826e08f37476e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'b697cfcab7b30a2a5e1c89d0bc459a92fac5ffe36b92e6aceff48c64d1b25a20'
    'en-US'
  end

  language 'eo' do
    sha256 'b6774af0416a81fc11ec0e3587d145a3f99a7ce2e3641a0fa330ca1756385889'
    'eo'
  end

  language 'es-AR' do
    sha256 '5b2bd413cb8643a2f3324b6bfa041a4279ed69366da13e74469637ff9c2b26a9'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '802e57144d42cf069ff51b516cef839cebd1c0a8559004b51223891ca64d7135'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'f9ce1ee8190d9622501126c746810149fcf6bdd45a3e7b780b9629ed5ac38526'
    'es-ES'
  end

  language 'fi' do
    sha256 '7b3843bf83458859c0a2467714a01a60aad364dfefe45bb55f0927288ed043ae'
    'fi'
  end

  language 'fr' do
    sha256 '89cac786ff83c4cb3c223ab5dbf38fc938b37deffd439eeff65fc19a97253302'
    'fr'
  end

  language 'gl' do
    sha256 'a516366f44bc0fb78847130fcb6173df7f70035929c40713080c95a3df0f2751'
    'gl'
  end

  language 'in' do
    sha256 'e13a9d62296cef29bf8f95e30f4546855936c87960d0c078d9c3565278d6970d'
    'hi-IN'
  end

  language 'it' do
    sha256 '22f322f990515eabf2d1023c6fb795ce3db89b2a136bf4553bb148c6877cbcdf'
    'it'
  end

  language 'ja' do
    sha256 'dc2d1a44a806f85b3fb4d7843faca54fb32d87f0a0b5c62ce3296505ba44851e'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'ddf7d41c28ddf078a7cd555902b7d20d324e9174186eab61dbd30c8f062ebb64'
    'ko'
  end

  language 'nl' do
    sha256 'dfee861d8a7f85d4a7c2af4b049e38f6245b5d6cb64f341c876d5eaba5da5ca1'
    'nl'
  end

  language 'pl' do
    sha256 '488929e8cf5d056e4c5b074dec838146f0f4fb7c9a30861c3c419576a7ae2dd3'
    'pl'
  end

  language 'pt-BR' do
    sha256 '58dff15be9be884ab7a1853e2d6ebc16b0e3840307aae5dcb692b19846fa31c0'
    'pt-BR'
  end

  language 'pt' do
    sha256 'bfb5c2f39d1cc4f704ed3dc3c4ebf16c4eb9e59f7dd63c67306dbff714c2a476'
    'pt-PT'
  end

  language 'ru' do
    sha256 'c398bf5b1f72230cf4fab42ee97090415dc5b56962950149523575bd1d48f288'
    'ru'
  end

  language 'tr' do
    sha256 '4b56232edf60ab2831e3ec525ad6f0d93a39b2ef17f398e9804a39d286efc9f0'
    'tr'
  end

  language 'uk' do
    sha256 '591d9e4e7608797b3689eaa82cb2cf601f5f852e528fb0dee2c0e37ec38665d2'
    'uk'
  end

  language 'zh-TW' do
    sha256 '49b44a9194049eb47abc92f1d98ee1ad7061e8f2fab89c0fd5e544fecbf76797'
    'zh-TW'
  end

  language 'zh' do
    sha256 '004104b39c019a4edb57e73d54b8392fe228fc34aae90bd873185a96cb7830af'
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
