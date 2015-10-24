cask :v1 => 'firebird' do
  version '0.20'
  sha256 '834d62c4c7cf7bf2fa895bdbdf8c54da863411e930c5412cd3df9ad664830c38'

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-mac.dmg"
  appcast 'https://github.com/nspire-emus/firebird/releases.atom'
  name 'firebird'
  homepage 'https://github.com/nspire-emus/firebird'
  license :cc

  app 'firebird.app'
end
