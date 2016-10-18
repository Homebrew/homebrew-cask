cask 'firefox' do
  version '49.0.1'

  language 'de' do
    sha256 'f7b1d7cb6c14a53e1857d3e6982ed63a00c97bf44051a67c9370f295b6d749da'
    'de'
  end

  language 'en-GB' do
    sha256 '84a9673fb922edb44d6d800b8c8f470964d939251d476de77c8426360595797c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4a1b91c93aa3c0d2e530622c2d4203246446409bcc4d0155c2724bd21886669f'
    'en-US'
  end

  language 'fr' do
    sha256 'b553df6fde061caa7f7ae318455c7c8eca5acd5e119d75971c152d91489a5c62'
    'fr'
  end

  language 'gl' do
    sha256 '984cee045a7aefeb4e4adc4ba2e0056775a39a758a7fdea3597efbafc9eeac22'
    'gl'
  end

  language 'it' do
    sha256 '644b07f956ae169a5ad2bf5a7c1d57c4379ea91cd5089e207cd4348eeca1d3c2'
    'it'
  end

  language 'ja' do
    sha256 'f242598e4caced4d126f36acc1541ec2a9e19e3c82859a77935b12649b382e63'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '29db6caf2633c43188306974edafcd2a951d1dcbe08aca37c017e5f95611c1fd'
    'nl'
  end

  language 'pl' do
    sha256 '81712bfaf0e167d1408fe2b23e27374892121616e4fc26c996cf2a56ae52416a'
    'pl'
  end

  language 'pt' do
    sha256 '70922d761d9a89a99686855f98a3b820faee7f75d8f289112061c37a5c3bfcb7'
    'pt-PT'
  end

  language 'ru' do
    sha256 'e77704feb0a60d3420440a2712f9cf4889a3911e86a3f63e65c43b07af4b860e'
    'ru'
  end

  language 'uk' do
    sha256 '7e6daa83a3f3ce5332722bf8024cbc41b40c5690391e1203b386db9a56bc945c'
    'uk'
  end

  language 'zh-TW' do
    sha256 'f7678356d09bad2ec1b85771476b87f0e7df4a67eb947db20319a96b53000ee0'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1f35d8a1359757e210c2b01b2891627a6be7425d99ad4f9a7b0487bba129d971'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'a159161411794fc6bb2e6fce6e57df6b99eb14499dde41c0ee4d0803d9277364'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
