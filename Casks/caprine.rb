cask 'caprine' do
  version '2.9.0'
  sha256 'bd1286f69b6fde1cfc731d76985523776c35b4f082dda55ef8b5140d5ec3e454'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '281c1a719acea0995bad6bce576fad3241d7b0c8a94c39dee41ebd96bd7f69d0'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
