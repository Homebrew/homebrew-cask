cask 'firefox' do
  version '50.1.0'

  language 'de' do
    sha256 '2311ac796c0b4db8073a4de16d58303c63a1a0ce963729e2e2b341b4f6ffbf0a'
    'de'
  end

  language 'en-GB' do
    sha256 '7e673a023a9d4c125114147bc50c610dd70048a177522e66b6f4727e4af4732f'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'b41ece47d0ad891d8b9307c0f27b50d0daaaaa7495dfa007aa12968a8cc68a6e'
    'en-US'
  end

  language 'fr' do
    sha256 '63c561051b1846f110ea60446a6578991a84d169e07dcfe1f4ea35aa4ca20e2a'
    'fr'
  end

  language 'gl' do
    sha256 'd0a2d257d931a3616376a26171391f1fcfa08ad24bb8e099c70b547f202d903f'
    'gl'
  end

  language 'it' do
    sha256 '44173c1a81b5f949650de034bc7b6e5dd433128def85769e474c0ce18bafd6f3'
    'it'
  end

  language 'ja' do
    sha256 'fb0d635e6fea19a721ec39ee46fdf9f5e2b139c349723b1fade3e1147027bef8'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '5883c9ca4f2e084300772059235bf4118b7b9f21974dc8a2abd24648e296d74e'
    'nl'
  end

  language 'pl' do
    sha256 '0e98e5cce25c1ee8e127424d0afdc8dcc13cf687651afebfe2f8134537d872ea'
    'pl'
  end

  language 'pt' do
    sha256 'ddf88b221498a445036848821a8cbd87f25fbb3c3965718820f403cf977788e6'
    'pt-PT'
  end

  language 'ru' do
    sha256 '5888ebd9fc5fe9c5c54bc83e760cfe30852861bca30a0f92ddaf1ed8125df491'
    'ru'
  end

  language 'uk' do
    sha256 '00e50771f4fe7242c8f8abc0c47a9876d5804d33617dd2a1a87db5c3085d7b92'
    'uk'
  end

  language 'zh-TW' do
    sha256 'b46f7de33f5ad25d85cf67482b61a7a085af69e95caca96862d932242589fc3a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1e71866df909ee353e0594a0863b9a6c1a8a3a5ea05df2dd9b51b91a5086c917'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Firefox/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '0888b8570c66c0225cf7515ec3f5afef8e0a752a88b4b9a77a54117722f769c6'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
