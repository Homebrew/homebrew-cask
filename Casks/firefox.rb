cask 'firefox' do
  version '50.0'

  language 'de' do
    sha256 '9f1ead3afa8b40400fd6a8cddf820b14b34c2746a8424441fe3ddf631373e102'
    'de'
  end

  language 'en-GB' do
    sha256 '6b26439ee28d0502c511c5a34c93b03d34ee8fefbfab40ca8f56c45bcc7943ee'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'eb9f5f44dbb3fac727314e9c98bb0f67e5fd33240ed83cd7267afd065bd423b8'
    'en-US'
  end

  language 'fr' do
    sha256 '8370edb41d4623a35e8cb0490eac870af1dd178ae34f94a7bb19a4fc1e48eee6'
    'fr'
  end

  language 'gl' do
    sha256 '4389b953f71546248a3356d49788ed3c30b23571aa9b52f61429c96afeffad77'
    'gl'
  end

  language 'it' do
    sha256 '54b4355223ae8d7449000456db76f9aa9510be0f143508b6d3113cc2f2e8d5ac'
    'it'
  end

  language 'ja' do
    sha256 '9ef20d19cef71ce530ad1b4a4370289096f827999f4e8f21dbdaf44e6b889fad'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '77fb0b92309a2e564dba6642989c6d7773bd22195f2c7dcf08e1b43741522308'
    'nl'
  end

  language 'pl' do
    sha256 '97ebbb3f31e5af447084133bf645e213f01124d1a8061780b350ece2e66c3e13'
    'pl'
  end

  language 'pt' do
    sha256 '63a8c686bb612769d459c992389a3d666e6205d94dd8bc57110ad3a50680efa9'
    'pt-PT'
  end

  language 'ru' do
    sha256 '0a947c29c254cf0e857a544e9b16045315276c77c30486291733f5b420bca9f6'
    'ru'
  end

  language 'uk' do
    sha256 '2d1eaac95af8230884bb11ac7795d77015c01103fc0d53df38bfbb2e26072422'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1202deb082d20988adaaf1a88ad99a5023e25e05161c67d6ae0b75cf921964e8'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7d35062779cb89803f6c33516c28f146be234f354f7be393d5e2897e4dcf59cc'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'ce2b16b074e1b27af9e846a7ee873349226abf039c5f8fd57a7fb769b548344d'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
