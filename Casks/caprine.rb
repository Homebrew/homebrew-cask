cask 'caprine' do
  version '2.3.1'
  sha256 'bd3c5d39b17bb9e03be17673c6cb014fa52fca37931324c100ed27f226fbbb09'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '963d417c0f5699a0757f83529112973e728a4675701a11fa38787c71c0900e99'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
