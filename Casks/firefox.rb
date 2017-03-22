cask 'firefox' do
  version '52.0.1'

  language 'de' do
    sha256 '281b2cb03e8b257554074a1841036db502d65135815a86f3ebe490e219f70205'
    'de'
  end

  language 'en-GB' do
    sha256 'edaed62746bcb781d4b5232b2d428343b77acb0d84c146a26d95b83e2e01f402'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c889d5883367ebf82cac6a872f8b24b69a303bd820a89bd455e1b915be62e907'
    'en-US'
  end

  language 'es-AR' do
    sha256 'e633caea735d5927cf26e36fb7143a332c32088fe44b08fbb27b40aff490bd6e'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '3539e77c4605a0a8bb63bd855a754561959d20d39089d9690284764668329346'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '371628f47bed81d9c86c948df6b849258976afddfeb23836677c1fa06ed8ea05'
    'es-ES'
  end

  language 'fr' do
    sha256 '3edcddd53fc7a8231c1f320c6ac78f10e3738cbc5e697ecf325e8f9c2db71ce0'
    'fr'
  end

  language 'gl' do
    sha256 '5310928854a6b912f0d18ff1ce0ce2333cf8eb1f677f7f17b0cdb311e153e83e'
    'gl'
  end

  language 'hi' do
    sha256 'be59090b53edb7fa8f4e9b205166cae3633e860265f4f09ce899e06d3421246d'
    'hi-IN'
  end

  language 'it' do
    sha256 '65c7378dbbf5ae3592bc467b1c367a636054f86d52e0e9b97fd531b0758c8045'
    'it'
  end

  language 'ja' do
    sha256 '2fd66a7965a6d811fa0d0bedbccf27b52347cb4a74b5347a2cad729d04a4c5cf'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '6bf75222de32c7489e7e8313c621a120d95ae0bc536c01ec2f45147c7c5eb224'
    'nl'
  end

  language 'pl' do
    sha256 'a29d3012f52fa291b8b8a949e1e45c4f3263205ad5cbd8eaccc93b07b1189ed6'
    'pl'
  end

  language 'pt' do
    sha256 '03427275f240283d87deb9ba52c8e56b47c8da7a5789346d3eff9f6cc2fadbfe'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '54d897499bf1c60dd066a04dc49235571a0cdc6a9a5b627fcf3ec3f6efd453c8'
    'pt-BR'
  end

  language 'ru' do
    sha256 'c6d8806cfb5392d73dfb058c795ababac6091b249ecc6e681a80d86cf15fbbbc'
    'ru'
  end

  language 'uk' do
    sha256 'b31c7195d6f1fbba0f07541fd2d9f4cb53518700be9006bda32392e3d1af7c54'
    'uk'
  end

  language 'zh-TW' do
    sha256 '31d4e65253f402f9b71022e0ae6fa2541cf19b5108538d0344ae20ccd7f25ec8'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e0982047b0997941940d25c14f44c4b4ba8d43c0783f1ec155272d44cd6e5edd'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'a08e44672a51fb0eeafd504226f8c7ff0b60e789ed420f615974b0d19de21fcb'
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
