cask 'firebird' do
  version '1.2'
  sha256 '1cc02fffd00b51eff1d6d3c5616820e94e0cd3bb1ee06cd02ac42adfe4eab662'

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-mac.dmg"
  appcast 'https://github.com/nspire-emus/firebird/releases.atom',
          checkpoint: 'e9d223585867764a4f4eee7c7cd056c056dee9a32ac5c631fd71e61ef209954f'
  name 'firebird'
  homepage 'https://github.com/nspire-emus/firebird'

  app 'firebird.app'
end
