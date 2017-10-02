cask 'caprine' do
  version '2.7.0'
  sha256 '46726138b692151038431c4f9e3e2a0cab739fa5f2de5dc2c899107ba7a81081'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '717aa946e8fd56396b5d3882f883d2a60f7c8054ad8ed82a1ec75b5bbd954fee'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
