cask 'caprine' do
  version '2.7.1'
  sha256 '3825602f4d185edb14529c42f09d045eeb3ca7cd6686681a76c96212a30bd31a'

  url "https://github.com/sindresorhus/caprine/releases/download/v#{version}/caprine-#{version}-mac.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom',
          checkpoint: 'd9b742c389b0867308bda584c8ebe59a191dcfe5514349e3cfef758a948851e9'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'

  auto_updates true

  app 'Caprine.app'
end
