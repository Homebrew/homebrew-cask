cask 'caprine' do
  version '2.1.0'
  sha256 '084b66565fb9aa9f5503cf0170122549e1cea0d76c0faafef91881ee3185d1b0'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'd966ff7ecf9f5277084b52d744048c2dcc4cbae2c464bbd3cd6c528e7fe44a21'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
