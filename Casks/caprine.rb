cask 'caprine' do
  version '2.6.0'
  sha256 '60d7e5334173ece5a77b4b431e7642534d89dacf303c036d5c214d0ac5da5294'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '4811cd96fef7c47e39ac75714fb7fc0d026d0ff66685eb919cb3b1e32cba4f9d'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
