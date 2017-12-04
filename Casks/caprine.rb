cask 'caprine' do
  version '2.8.0'
  sha256 'c16b8864c1ceb01cbbc2d2137faf4f583bd7a819ac84bbf2689611dc352f81d0'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '4d4b1e0a9f742d9cda7642279e24c508317741e1a7e937d0a0a5fc9f55be7ae3'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
