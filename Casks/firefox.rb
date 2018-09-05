cask 'firefox' do
  version '62.0'

  language 'cs' do
    sha256 '6abc9785cbab4830b88c77f813501bc91f79d4f0525bb4f8f68a65009ca7d290'
    'cs'
  end

  language 'de' do
    sha256 '1cc6419a7afd8c650fd994cb8c1cc2700956c9940dac2c83e556cdbb3ec53119'
    'de'
  end

  language 'en-GB' do
    sha256 'bc810a3086a71dc65cde4444b94d3595afb2919a91e86326edc68e4ae009b3f7'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '10f478ec34f9be0f096b6c25d825876a735446528e7225832104832807f316c7'
    'en-US'
  end

  language 'eo' do
    sha256 'c879116866ad14c2f2e83b0899786c913f584272a8943f0086e4711b455c8db7'
    'eo'
  end

  language 'es-AR' do
    sha256 '94c61d5d25c0e10ec17711e96838a7004a984fb2e46545ae2142eefad4c3b4df'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '13e797cafa4933eb612ab29c3375be723333050aa368ff84e018d9ab779b39d8'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '75145ba380467d0dc125ecfc1b07fda535fda99db5d820aa47e04d6a8496380a'
    'es-ES'
  end

  language 'fi' do
    sha256 '43d3958b06b6bd69fb72b9ad9687bd67a81851de98c1dbc6da59b317f441bc35'
    'fi'
  end

  language 'fr' do
    sha256 '0329fd1ba962a6ebfd4f3f7be3d94f9853ae8be83d3660fb4954f6b3af8d80a7'
    'fr'
  end

  language 'gl' do
    sha256 '432e43203e0329818d022710a6a07b3a77dc3f89c832d92e7e65adbe3eb9ae30'
    'gl'
  end

  language 'in' do
    sha256 'ef59abe4b636b7815d8591cfe16b79e78405d37f580d928f72e62c771ed6c3b6'
    'hi-IN'
  end

  language 'it' do
    sha256 'aa7ac70d10dd36149be46d035b454e6844794dbc42b867d40daece34b416e50b'
    'it'
  end

  language 'ja' do
    sha256 '2834f261c8f96a989552d832aa67fc3079acb73d5955cbaefc4cb33509600c85'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'cf80d8ac6fba6a41114f6703534b9af01e01cd8690c9492b97fdcb303f57c05e'
    'ko'
  end

  language 'nl' do
    sha256 'd0672247a746bd73884d69a273cf47446717632134fa9363c14e840ad49e0ebd'
    'nl'
  end

  language 'pl' do
    sha256 '4019e38ddaab3dc7c07345b45af625cabda71d02766107a6398eb20f9b15fd38'
    'pl'
  end

  language 'pt-BR' do
    sha256 'e0a93e1eefba7b7dae8838e1065df5a44db6f6cf81e977027f83f7b0d5e20bd8'
    'pt-BR'
  end

  language 'pt' do
    sha256 '36dc39380e777dbe8b9cc61cc3c13f870e29b7cd63ef022db8b5ee1e8be9592b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '38c0494bedac5061a01cb3368b1da4fed7566ca8c1af04d34de1e99a27d2a4c2'
    'ru'
  end

  language 'tr' do
    sha256 '95eefb9253b4676a66ebc9fd7f37d1bc277d0d557e9053fe05faf37c0f0acfd6'
    'tr'
  end

  language 'uk' do
    sha256 'e8adf77c3e6e6e6f8ae79fc9a8c8d177b7dc6503757b0e4e698e7716c1991478'
    'uk'
  end

  language 'zh-TW' do
    sha256 'ccf133960cadac0dd185fa7be864d32e1672608720df13621db99076a88ec7a4'
    'zh-TW'
  end

  language 'zh' do
    sha256 'fb4f271541e207b4afefa862f64967e9974077d0cf6c64a8f9c847e72ca661f1'
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
