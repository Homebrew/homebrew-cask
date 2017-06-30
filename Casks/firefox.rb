cask 'firefox' do
  version '54.0.1'

  language 'cs' do
    sha256 'ac235b2ea1f8e0f4d2f6b66b01893cde8ee95fac054dfce1393d8dcf86e884cb'
    'cs'
  end

  language 'de' do
    sha256 '66258d2deeea11d41704c363c1e14fab9de75ed1e9062197dd79c2b519756fae'
    'de'
  end

  language 'en-GB' do
    sha256 'f51d75ddfb79b2458f4047ca8e4d4afedd5a6005ef854651dae984ba008aca22'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '5ec2a1bac1059932399bdbbc9fb64fdd51f069db8768f2b52b080218eb019773'
    'en-US'
  end

  language 'es-AR' do
    sha256 'a11763ce4334449bc559a0669d59cc3b3d54a97579edc9cc6c38d2ab3ce25ded'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'd62f0511fdee5c9a3a17b11c546385a5a4fea44b2eb5fe6a593d3ead52479a17'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'd4b0d5cd73a3812a79e20e27fdbd24e200c3e680211f10738890552913e271cb'
    'es-ES'
  end

  language 'fr' do
    sha256 '9e29824f3a420378e60e0dfaaf9bd51f36fbce1800bfba45bb3b812043226577'
    'fr'
  end

  language 'gl' do
    sha256 '0de733db61946ae3ddfbd43c09596dddf2c64deb4b8b05404f80dc379d0725a9'
    'gl'
  end

  language 'in' do
    sha256 '6ec8cca708e63276e819e6b414c9a3e53b9e36f34360c11bd24b5092a70b92fb'
    'hi-IN'
  end

  language 'it' do
    sha256 '8fede6af248f85a2219f9b3c896514d6d6666cf34d15b6627a3de004b84132e6'
    'it'
  end

  language 'ja' do
    sha256 '58de5f7d7bcb4250e1f7a3301277ad29cfaa384dc854bfe9aa3c275990043a97'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'f64133b6c0bfc214adc52bf67dbe2c1f7a1472cf3f52dd90e348ac3ea38a43f6'
    'nl'
  end

  language 'pl' do
    sha256 'e36cfeaab39233e354f2bb87812e51b49882068a6b5c0bfa8a6deacd67e2445f'
    'pl'
  end

  language 'pt' do
    sha256 '3eebc8f593e8bc87b29e239d9969d1452cca7d020f65b846993d29860939e838'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 'a337d8c486046a68a5a03fe3a4b3789fb9637e82d6cb0377b60b447cd7889da9'
    'pt-BR'
  end

  language 'ru' do
    sha256 '130a726b7a4068ce448dfadcf407244d395f799d8c3c42d65de7ea6498e35238'
    'ru'
  end

  language 'uk' do
    sha256 'a3568b27d21d657d3d5b420a3fb2c27b3f4a14c584d0417c15c067c3da414d1a'
    'uk'
  end

  language 'zh-TW' do
    sha256 '04482922b9f2c0b7ffc2c6a0521cc44ba6078c0b555811fde5662aaa90425ec4'
    'zh-TW'
  end

  language 'zh' do
    sha256 '8a6a33cad6682b723825e00d3e5d9d5666e8d9740743eacc84825265a940be89'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '3d26902f0af3dfd86df971d665d04b8b27bab121092b8ed456995517b44c44b9'
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
