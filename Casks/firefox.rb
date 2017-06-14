cask 'firefox' do
  version '54.0'

  language 'cs' do
    sha256 '3bb7c01aaf7e4962482539ed291332b31317774adf05c0847806e87ebaf7a14a'
    'cs'
  end

  language 'de' do
    sha256 'e96ff24a9fb479d0b1e06ae032fb372701de7699b153b4179ccfad40982b6bbe'
    'de'
  end

  language 'en-GB' do
    sha256 'b99237175ed7b70765b62d54d11d4dea58e565cafd843781eeb50310d3881c8b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '0e7c03fb78665de30c30025b188c876f0a50e75f06b0d84bda5b9e05ce5846ce'
    'en-US'
  end

  language 'es-AR' do
    sha256 '81ff5351f30976588dc2a3cf561488e203e984d4818dad0aa279e2e4561eb876'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'f2c53b50537974f937b31d0a0b949947306cee29afe81772bc62e54eea4b9b39'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '6b162e5d4a691e055fb08bdf13488f2bbc15b9a0d4c1e265900094375660b3b9'
    'es-ES'
  end

  language 'fr' do
    sha256 '12a35feff63c4a2a35ce4acdcd54db698ed6a5eaed52aa122ccb9df4680b62ce'
    'fr'
  end

  language 'gl' do
    sha256 '3e902bfa0c55ef7df176c145c8ecd4bfc2cbf911c09d993e44043a3c02b429ec'
    'gl'
  end

  language 'in' do
    sha256 'f4321e230eda075660adbbb183fcb279ae0e9250bad5ae0de72624115a571111'
    'hi-IN'
  end

  language 'it' do
    sha256 'bd68af7e7944f8334d58c6435b46520b029358345213ecd4aa6798944b071f9f'
    'it'
  end

  language 'ja' do
    sha256 '2ed7515eef0968beac7b79b1f8eb17d17ccb7a5cb2d90e5159dbeee3557c00e1'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c4e637c20cae027efb3aece3fb60c0e3c5d9114ef2b1ecaeb6f5e7f3a56253f5'
    'nl'
  end

  language 'pl' do
    sha256 'cac04e34d32108fe04ff3a7e0fa00d374e43639821d319195e034498a8c9de5b'
    'pl'
  end

  language 'pt' do
    sha256 'e0e093fb20682eaf574610e31bbfd49a06a818f1f93cf9160bcf70e15be2329a'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '9968e046cb215a4d51fed18489f6f0793eaac427ff9c5caa0e9991f2633b3835'
    'pt-BR'
  end

  language 'ru' do
    sha256 '818215baa1d854a5d7322f2bd99adefccb6d4a5f5a7ef39fdb58d72bdc2ea248'
    'ru'
  end

  language 'uk' do
    sha256 'fd645f407971bdb382ef4e07889947863fc39adbdd70cf874c9d50a318371e2f'
    'uk'
  end

  language 'zh-TW' do
    sha256 '51760fdc2cf86471c88b076248932961f2ac0608934f10ae060a93a4ac54debe'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f0fd7e928663b1ab7aec6a4269bd4c3ed5601f87aa65d283b6991ecc1e0209e2'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '44d34cec0b523d205fb0d87c170131307bf9031df9a9d2707732937e6180b187'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
