cask 'firebird' do
  version '1.2'
  sha256 '1cc02fffd00b51eff1d6d3c5616820e94e0cd3bb1ee06cd02ac42adfe4eab662'

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-mac.dmg"
  appcast 'https://github.com/nspire-emus/firebird/releases.atom',
          checkpoint: '4c2339255da96c594c784ae3d3846bb422f261fda372147245fef66cecd502d4'
  name 'firebird'
  homepage 'https://github.com/nspire-emus/firebird'

  app 'firebird.app'
end
