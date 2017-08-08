cask 'caprine' do
  version '2.6.1'
  sha256 'ca343d98fbbb609a8be3d8d73c8cd8ec6a0decc48e1064406a01b0f639b57d13'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '001ee7743c76ea4ca224dbb7d9ec1193665bc3fde2dcf115fb2a8b240478fae7'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
