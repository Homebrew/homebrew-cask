cask 'caprine' do
  version '2.3.1'
  sha256 'bd3c5d39b17bb9e03be17673c6cb014fa52fca37931324c100ed27f226fbbb09'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '51778500533b5b5596c8025b4190a9102ec4f4d512cda6c9b1b5e033090fd79e'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
