cask 'firefox' do
  version '55.0.2'

  language 'cs' do
    sha256 'a42208298cd9f44aad5a130a581ddc04faa95caf5647f76a91abfee919392d53'
    'cs'
  end

  language 'de' do
    sha256 'f368d41c61a2af75ad45fa41f5954c53b4d89c59592bdd959d4630299ca9f49d'
    'de'
  end

  language 'en-GB' do
    sha256 '3a1925b35c5a6ab751cd25413112c4ec114cf0ac551c14536fd52c8e54524fcf'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '3e9ee0836ff975caba2f2cefb8681d7d0a8fe832896421fd152dc314e5fabf55'
    'en-US'
  end

  language 'es-AR' do
    sha256 '8be98ec0dfc6f799cfd831392ea6907eed41e7f9b151188804c049fa7da467dc'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '3ce8275f38d6219e6892f3cf03094497d63bebaff9495670f9753af36ebf1bef'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'cd31031f064ed41e6dedd9da4becdf7d077cb003d86533ef0fa488941555a6de'
    'es-ES'
  end

  language 'fi' do
    sha256 'ff602aaa45faab7d50d7b460115dfc48d9f8b87c2ae3b407768062e859a6e5ee'
    'fi'
  end

  language 'fr' do
    sha256 'fc6437eac348e6a297fa9b47be94732d0f72acef289ba44056d0ecc5e1522a7e'
    'fr'
  end

  language 'gl' do
    sha256 'f1056b32cf2633feb193bf3fec3f254bd990c065ac82e0dfd326fcb5729f324d'
    'gl'
  end

  language 'in' do
    sha256 '7e8d955fbfd9255132a0f395429dfe1647a9c824c057bd864a26ede248d32fd0'
    'hi-IN'
  end

  language 'it' do
    sha256 '224952b13017000dfd055d8f8a2e1364b5a7f3b8589a10ddd9e31caa317c7b8e'
    'it'
  end

  language 'ja' do
    sha256 '75ef5a2bb0761065e8d84979f1beafbd75c5fd3b888df3db2915731cd8fdb240'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd41b91befa06a7a65d400db074369bab47d36be21f9ea882ee1dd7c5887bea95'
    'nl'
  end

  language 'pl' do
    sha256 'ffff693d956e03e11e77c500362e0d12b5e64a29c1de7de76c5af0b6715df524'
    'pl'
  end

  language 'pt' do
    sha256 'ae1dd56ce99d6c0edd6ca14a5f310d82ee8ec351f880aa628a944f04997480a0'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '9e5d417782e77244f9acc781f4c9d97275581102bb3a44d9a1163393c9240d10'
    'pt-BR'
  end

  language 'ru' do
    sha256 '4a1e8b664895f1361054d5fbfa071b18e19f960d997ae0e2b95598c701d45a11'
    'ru'
  end

  language 'uk' do
    sha256 'd4051d64acd1734c85bd6b91abc9461f083bf895d57b6a3044898e126d70fc79'
    'uk'
  end

  language 'zh-TW' do
    sha256 '10bcf15cb4abbebedab8abad359b5000b03791176aca68b9b9620d5c7c844bf4'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a6c03e2ee6a3170bc5b85703804a0844c01a745edaefa19179b1cee50a539820'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '40c0e5a526829e0993d35f103f437b17eaf44bf3a71c2c4ad783d03429d87e6f'
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
