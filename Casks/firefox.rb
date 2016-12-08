cask 'firefox' do
  version '50.0.2'

  language 'de' do
    sha256 'f0d357472ddc97644e3ceab9635261a8fad4ac1ce421324ecc3e7a23ca596bbb'
    'de'
  end

  language 'en-GB' do
    sha256 'aabfd7a6415c7be8244365258d7aee5b6faefe2e9ad6b32e39625956438c4f4c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '821e227a9fdde4d9f0b05e936abfb445cef36e98c22df1794027e60f8a502b0d'
    'en-US'
  end

  language 'fr' do
    sha256 '0e4ce9449c81b9a6d0a6585ed05f39640b4b00f41835cefba3de8406f49f1e49'
    'fr'
  end

  language 'gl' do
    sha256 'f8b80dde9734271c2cec23f212d8c48bd624960a754e1fe5e3c6635bd71ad73d'
    'gl'
  end

  language 'it' do
    sha256 '871f4003a748820abc1e18ae333931d89e3f683fa9a7c9eb25b24f5b773960e4'
    'it'
  end

  language 'ja' do
    sha256 '2e2afc43b10cea6f3198b5a05c70e8c621b70c486ac965d86918bdd3303389e5'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '4e932720691ac3f7607cdd84d182f72aec27d587b972441adaebe21f91887fb0'
    'nl'
  end

  language 'pl' do
    sha256 'bea6513ec672edc2a904a29ce05d502b3932ae4170911fbe1aac737e92775022'
    'pl'
  end

  language 'pt' do
    sha256 '620daaa9dfdf4996d012f6b7dbd836d2c5e913cef6d2df1d41cf8bbb3678d483'
    'pt-PT'
  end

  language 'ru' do
    sha256 '99eef5dd48ed39c3e8408f485a8ba8d4879b1331c6055da41188a94829d0b817'
    'ru'
  end

  language 'uk' do
    sha256 '76157057b0dc52a2090753dff7a24de30fb0d781f2b4940e2bc3a591b650346b'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c29a101e3ec183437b4ac12ba7b5ad9e4d00332e460fb6e459a6d4051b245440'
    'zh-TW'
  end

  language 'zh' do
    sha256 '18c7e910870358995eb6499dd60cf90cd6ac44278b48c5c4d3554432f50bca3d'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '2bbba0fc24add1ba7a0c538a195cc5243292ee7cd5ede3d9fb2b49752ae44415'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
