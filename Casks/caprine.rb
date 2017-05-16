cask 'caprine' do
  version '2.3.1'
  sha256 'bd3c5d39b17bb9e03be17673c6cb014fa52fca37931324c100ed27f226fbbb09'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '62c7d84c12bff83cd8dd0712ecb00f7bb34402aba5a2796eb3c32509c39d08cb'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
