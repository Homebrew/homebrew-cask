cask 'firefox' do
  version '66.0.1'

  language 'cs' do
    sha256 '07644b768b119229ff205d077bb41b1045a1d62801bed27e07bc7e4d6bc42100'
    'cs'
  end

  language 'de' do
    sha256 '11d0237bb68b6777a6fd893994f349af3b4cee15d33d9717d4dd34c868ebc7bd'
    'de'
  end

  language 'en-GB' do
    sha256 'dc168022765126af824be05b217908aa16676d9166942b67aae028fb4db583d6'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2fb3186a8eceb84b55497a7fbbf816742366df08d0934a0c6c66bc56d6f6c614'
    'en-US'
  end

  language 'eo' do
    sha256 'bff6065ca02a9cd046abfd0abf07e3aa289293efdd192fdad1d51c42dcb3cd0c'
    'eo'
  end

  language 'es-AR' do
    sha256 '8bcc39da675fce9affa535f130f358bc98ba387dd9f2d66382894061e05b6b78'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '7bcfbfc2fc24c6bd5d486e66da2f08cbff6c470e4158a99e8dec9411081c78d8'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'a5e944593190b63ef7de20acbf46e432fb2309b01617642ed271bcd3eb1b5616'
    'es-ES'
  end

  language 'fi' do
    sha256 '5337e21808f65bc3fbfd44af2aa7597c5e8a7b5f3969a28c2128fb09d9eb648e'
    'fi'
  end

  language 'fr' do
    sha256 'c83f7a0cbb5d5277464156c08ddc76733f820cb267f0d0f3db890688c4978123'
    'fr'
  end

  language 'gl' do
    sha256 'f5e17b140dc00f9c4003fdc8eddbcfe156220350cf7812c99b17d6cf6dc62d28'
    'gl'
  end

  language 'in' do
    sha256 'fddad636ccaf5945b07aff14ca9a1d8918a5812a7ccfc6a677d2e8228da58bcc'
    'hi-IN'
  end

  language 'it' do
    sha256 'fbcf09bff57cd7aa6aaf3e796877acfb12efe3d8b5c8c856a80df265a72b4468'
    'it'
  end

  language 'ja' do
    sha256 'aefe6cd8ee55f2dd5467fa6a4cb9c8f794e73a2d80337ead23c1ef9ae7f51c51'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 'bdb73e0a71754a8f6f55d08a5fd0114121894ceec0da4df7bb85a652977e5c2d'
    'ko'
  end

  language 'nl' do
    sha256 'a72137237f905a6f6d6b2b1cff52264d71360d4ccb55f1f4aae86b33d19c13b4'
    'nl'
  end

  language 'pl' do
    sha256 '8f5c10981cd499b8030d702737a9d9485ec9dd4fe5d6fc51c9f8e3f586c92752'
    'pl'
  end

  language 'pt-BR' do
    sha256 '1f13b9b81f51f9e4d4c8e024260e8beaeea36917735da943f7b327d93c1aba4c'
    'pt-BR'
  end

  language 'pt' do
    sha256 'e88b0917cfb366e0109fb75378ea121897dd5fb6d04cc82de58337e247ef382a'
    'pt-PT'
  end

  language 'ru' do
    sha256 'd52f28ffffe0bcf886bec9e53669006f3e5cf715e97d77c98183e90f26d99a3a'
    'ru'
  end

  language 'tr' do
    sha256 '365d51d20a8e34e35e61b372e364a64d3758fac82067c82fd71bf3e5602ee81b'
    'tr'
  end

  language 'uk' do
    sha256 'b334f298fbb79427d16363053efcbe8cea32bc66402cd529278921656b329c2d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3c0a69b8f9e32fb3d4f6d326d7666dcb2352d90f55af0db4e989308bccc977e5'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5b6ded4382613c16761d2aa894e7d3c20948855a8c598fa39b87feebbaa55f3f'
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
