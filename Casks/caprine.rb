cask 'caprine' do
  version '2.4.0'
  sha256 'ec0dc7d6e5eff8e8569e501b34bd2c590525d1b02918ae7b18ece4881f356c98'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: '6790d11ddca8d12233616beef6353dac6374b3901539faadfdceec24009c9a83'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
