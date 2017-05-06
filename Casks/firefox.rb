cask 'firefox' do
  version '53.0.2'

  language 'de' do
    sha256 '96329cad2acebc2ae17e995fade5240554640d9dc5a91532e29a138282948ac2'
    'de'
  end

  language 'en-GB' do
    sha256 '77566765663ad491c55c8470e4e1234bb30f3388c2a6546ed18c90992e01de94'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '180ae12e65fb2c8025ffad501d998dc01dbe19408b528c78a05a163f0fa0b5be'
    'en-US'
  end

  language 'es-AR' do
    sha256 'a02002d0c46591b9bda866b4825bafd7e902bb1863b257fd0725a8c92cb53f31'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '83e16ed13d50509a85b2cb0020bd7bb2f1dfb58a54fcea254ee63e91a7f7f7bb'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'd2632f01b5e78a314e45437ff4ff532fb79f7867e73baabbb7f66a38b3404143'
    'es-ES'
  end

  language 'fr' do
    sha256 '4fbf4c892fc846ba0d3b830d64f20b3c87d5d5152b04202c35012ca25ab7c06a'
    'fr'
  end

  language 'gl' do
    sha256 'cc843bde7af770e3ec0f848122b90343b088279c8736764df6f7db426408c35d'
    'gl'
  end

  language 'in' do
    sha256 '04e3a3eccb234b7527ea7246883480ba6cc386e98fb8caaff6a4d0ff9a0a37d6'
    'hi-IN'
  end

  language 'it' do
    sha256 '34126aea59b21a291561962ad134e26abb0d3e2149648e743fbdd17c3d9ad040'
    'it'
  end

  language 'ja' do
    sha256 'b81d55a3c28307df6402815d3d5a0b8e69df964025b8aae360176dea831310f6'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '1b9150319b17abd1bf9f6f0be694ae6f85de45f7a05abf378b1efce22e281bbf'
    'nl'
  end

  language 'pl' do
    sha256 '69a096e8448fa8518fda150581dba868253c7e973a5948433083c6bd4f9a7fd9'
    'pl'
  end

  language 'pt' do
    sha256 '19b50f76a3ed54a783db53d152f9dbc6f0718a22ad9e9fcfc760bea9918dbe77'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '35d3bd38d9bf82529906388f21df7d53faa58275d77b7cfbb90d705d487c1352'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c0bda939d321b5bf22d4946c1e674cd8ad9f9aeaf75c6cc714007d0165b65e46'
    'ru'
  end

  language 'uk' do
    sha256 '6be6646d1be1e25ea03c78925a121a7a6211cfdf206b0d7eda05955d16415a97'
    'uk'
  end

  language 'zh-TW' do
    sha256 '9ad5be1df9ce7ea6b5a7812a1261b990006dfb515d40194933d6455ac8706c49'
    'zh-TW'
  end

  language 'zh' do
    sha256 'af5d9b89103b63b7f36c9edf8f61b5d641c26104c0f743b65faa1c163a217dd5'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'ca5771d3afe74b835adfd425531641f59af117ba6ed9a4ce6dc4803d465af15a'
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
