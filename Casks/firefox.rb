cask 'firefox' do
  version '56.0.2'

  language 'cs' do
    sha256 'fbc387096b9e50238a1311de6b89e7a828589fecdc1788abd4821804e6503c56'
    'cs'
  end

  language 'de' do
    sha256 'd536bd88658e00cac08bfe77de0a7326d86e466b3ce1564edf638869b59bc687'
    'de'
  end

  language 'en-GB' do
    sha256 'c7bf8b9680ac47bed147408d567c34a731cbafb30910246ee6e490fe2d1d89ba'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '1a11cf1bb57c8bc7c538f1fbe88a29e64ab5a4d1f9879fa617e6b57559d6e5d5'
    'en-US'
  end

  language 'es-AR' do
    sha256 '1a573afddcaa6ab8d33a529744859cc2cb31da9951f6346ce898c451d18fef15'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '14bee6c3ef4798ee5189488fca2c5b34325c57dbe9eaa95c1a2a235eada5f39e'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'a2dae4b4df09676aa66735b2bfdbb47dcc126dc7b26d56af665c8b3eb9c79d7a'
    'es-ES'
  end

  language 'fi' do
    sha256 'c33d607b2c708eaf1d0c43c32139346118bb275045dbf36f5a1183f493b36562'
    'fi'
  end

  language 'fr' do
    sha256 'bc8fef2315d0082772d4771aa4dd2986ae513ac3c0dce4a9d67151cbd894239f'
    'fr'
  end

  language 'gl' do
    sha256 '0f21d58f144bb5aa9f7bbdab952eb75bc672372b975d7c92925924b1fe29a242'
    'gl'
  end

  language 'in' do
    sha256 'a3724337bda897e4b0429958137b8a5afacb44233369b2185261df106a28fe3f'
    'hi-IN'
  end

  language 'it' do
    sha256 '0dfdae4880ed1f099e45754ab5154bbd4463976ef8a36829b3fd29b34933fecb'
    'it'
  end

  language 'ja' do
    sha256 'ac7f9ce9cf2d85fda25a487c02d9b050ea5eb4108793f60feb930b4283acb985'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '4b7b137c55714a37a9974b85b7d790c26e44cd474b7be4ee7a033436779b63e9'
    'nl'
  end

  language 'pl' do
    sha256 '2a3c984b89523ac19bc7454cbccc73a4f1c02edc4fe0899631497abdb4f00ef2'
    'pl'
  end

  language 'pt' do
    sha256 '7e328d2bb73aec87122419684b7c6a9cc1d6d891b3d7b0514641222ffb50c364'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'da7920871e111ea9b39774dbe102163372b9a33d510092ead960c510a7dbdbab '
    'pt-BR'
  end

  language 'ru' do
    sha256 '169fe1f6f58ffa94b1c4c7417e38a1af4b5cd0f3bb8634b183e66d4f6f1f111b'
    'ru'
  end

  language 'uk' do
    sha256 'a5692b7799f5fd967b8aaacdf256400925039d1acd3d5eeb23bfc084c9f8f4d9'
    'uk'
  end

  language 'zh-TW' do
    sha256 'd4667737ec5297b813ff32093edf689077a0c475e05d9e48c2971c8a4aecb969'
    'zh-TW'
  end

  language 'zh' do
    sha256 '0871966d5197367a02faa15fce5217f7ee34ac2ed4df391276788a5040aec11c'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'f2ac1ccfd7f5342bdab5589bb5d803b45e5a5fb31997a3503d2f9e72efa4cf55'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/firefox_*',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Caches/Firefox',
                '~/Library/Caches/Mozilla/updates/Applications/Firefox',
              ],
      trash:  [
                '~/Library/Application Support/Firefox',
                '~/Library/Preferences/org.mozilla.firefox.plist',
              ],
      rmdir:  [
                '~/Library/Application Support/Mozilla', #  May also contain non-Firefox data
                '~/Library/Caches/Mozilla/updates/Applications',
                '~/Library/Caches/Mozilla/updates',
                '~/Library/Caches/Mozilla',
              ]
end
