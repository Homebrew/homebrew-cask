cask 'firefox' do
  version '57.0.2'

  language 'cs' do
    sha256 '20669579b53eb11dd440daccfb87ffc75eb3ece3548e47ded85b4b1f800cb1ef'
    'cs'
  end

  language 'de' do
    sha256 'b69a553e142bd0277d69934c458983db068ef3df33e2fffc49e789f1496f3abc'
    'de'
  end

  language 'en-GB' do
    sha256 '3dbfe3ff2e4c33775746b0c8b9447658456cee35bafa68071a99e6f2920781d3'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '93cf8ef4c3ba9a3fd865cc6879edb805cb670c49a9ab9a5d092dea975a220442'
    'en-US'
  end

  language 'es-AR' do
    sha256 '6c5a79549535b13dff4ace6af3442b63972feeb10ec613c06e2d7660aa1a198e'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '21beecdb1bd16f901654eea09eba79a06daad0185824fbb38ddfe6fd73089601'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'baea3c4e04fd62c2b33eb3eaf5a1578d2c02da66631916c8d55056efc45239ea'
    'es-ES'
  end

  language 'fi' do
    sha256 'beb75de8b8fa3df573933dfeb6267115fa6115fc12a1be8b23a2b899fdac7ee4'
    'fi'
  end

  language 'fr' do
    sha256 '1d384f50c65e8da3fad4450db2144a9ac0f281de5bd6bd82125711a1a8bbb8e8'
    'fr'
  end

  language 'gl' do
    sha256 '6de66e0c481404c6297e2b7531e64af7359cb284d8e1320406345a48c0b12953'
    'gl'
  end

  language 'in' do
    sha256 '3b35f47d6251b9a6d469d2c25329014ad2cf21538b6d8721170981048d825d92'
    'hi-IN'
  end

  language 'it' do
    sha256 'fa0b7af15513b670440552f95bd25bc21f9e59223447adf53e1ef2ceb45eb217'
    'it'
  end

  language 'ja' do
    sha256 '37a62866b82cbd115b96e8b03ebca0e142556eb1df13f41f7aaa0efee1b0fe78'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '4488cc5b64a52a207e864dac95d441d7f543a8e09869db56d80d97948c7e67a6'
    'ko'
  end

  language 'nl' do
    sha256 '693d0165578a6dbd7ed6be1301e5feb148530cd1d2ecef67d04c650919864f8a'
    'nl'
  end

  language 'pl' do
    sha256 '8d313caf561f820f4895c1d7c14d24c2267129c7c3a7d8e5505581a513ae7d22'
    'pl'
  end

  language 'pt' do
    sha256 '6d91563c55bc0f76c8a2a9c4c36a4dddec47c3c38542fb39276edeeec59126df'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '392e258e5dc03a690d6711d70fc503306f88eb51b55c639a61f5fbe0e45f39b6'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c372996d782ccc3d44c845d4a2c08857bbd233ffd33946304d3a711400214610'
    'ru'
  end

  language 'uk' do
    sha256 '976501a0c7718676b6aed8ded68c928b03d233a559318acddf5c64430b584719'
    'uk'
  end

  language 'zh-TW' do
    sha256 '4db48b6cfff905fa5f65b86c62e1625ea64487e27745b0b51504049af96c5d51'
    'zh-TW'
  end

  language 'zh' do
    sha256 '8a21479353e3a2ad47c4d2de788acbf3eec17e22734b8232da93d6cb86929665'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'e0dadbc9cd1f1bd8ce3118cc3383e0d0f6d147f055265d498d99deea956ba00f'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

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
