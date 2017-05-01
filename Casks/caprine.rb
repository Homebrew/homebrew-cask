cask 'caprine' do
  version '2.2.0'
  sha256 '175b29b7d78e21117dfdc0dc60d66f542f5ccbd4a091650a8cdb12e3f2db79d1'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '9bbe02c49e919e2c30042a262c392b75e3f8a994374ff050306f9caf60e93aef'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
