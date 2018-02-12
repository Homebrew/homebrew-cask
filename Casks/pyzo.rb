cask 'pyzo' do
  version '4.5.0'
  sha256 '45803003a51d5d1d8dd9a114ce34e2fa5da6d40213450ce93faa863b5792db6f'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom',
          checkpoint: 'cd706d1dd49c7198fc67c2db665cdd956c3427fc92e6581128dcf5433e4b223b'
  name 'Pyzo'
  homepage 'http://www.pyzo.org/'

  app 'pyzo.app'

  zap trash: '~/Library/Application Support/pyzo'
end
