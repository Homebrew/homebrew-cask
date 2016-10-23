cask 'firefox' do
  version '49.0.2'

  language 'de' do
    sha256 'c7ac30e720f58e27d02579669f53a11c58933ecc8edbc1ab1a0aa80852555010'
    'de'
  end

  language 'en-GB' do
    sha256 '9bd9b07553382e7435ffb1de3f4b0b0344e57dce60d65cf3c76c3313857d3606'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f1fe33fc2ed11584c2d9d4280c54e3d8c5a5289a4fa2d77c9ba5e5abb5ac060e'
    'en-US'
  end

  language 'fr' do
    sha256 '191c1e9f937218c3e84b74d19abd4520e085254fe93a75d14fa5c8dd0c0074a4'
    'fr'
  end

  language 'gl' do
    sha256 '9dfd7cffb09c31ab670fdffc58f4f1ccdebe9d6560600a07a49d8a277af6b8f9'
    'gl'
  end

  language 'it' do
    sha256 '51b94c66f23752025dac13223adc76c5ef0f6dc12fb3b900d046ac9c59656aad'
    'it'
  end

  language 'ja' do
    sha256 '9b4c8a2e8dbfd6bfe829fab326f0b41479ec51def21d2f52eacdad48a670856c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '3f784eff05eeea33f875d98abd52194e46828a84ab4a84872e278efd9985a6c4'
    'nl'
  end

  language 'pl' do
    sha256 '3049c7b52e47e54d397eadba7de7d9b7157a066b6c1aff0300778de01ca3a52b'
    'pl'
  end

  language 'pt' do
    sha256 '2c147d41ae75930eaa3d10024bcaecd2ca11c1cb85642f6722a2c2ccb220ea03'
    'pt-PT'
  end

  language 'ru' do
    sha256 '4cd2cad5d8d7dbb67b30e95fe56ac9682f6d73c25b010d4358aa4113ee405e0c'
    'ru'
  end

  language 'uk' do
    sha256 '535fbc4626d8b6ea4f9e7acde984b09ae6f60f9c78107b29be1fd206cc8f116d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '624a146056d62ca958cdacc178f8d5e71b4c16aebbb9d3705a901277b3b6e1bb'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f5de6689a141dcdd22cea6216c2e4215eedc45ac1840b3259d85ac16a97909d9'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '0ca06d211b47f078c69e6ebf1a87dd9e62793ee7ca0867fbfeb43cc37e4a39c7'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
