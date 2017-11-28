cask 'pyzo' do
  version '4.4.2'
  sha256 '5e61a41cd481bd20e11d7a710d22df4f1e57ce9b5a781e51d9837068cc0250c7'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom',
          checkpoint: '7fa8394f33bf85d435249bb4ed71249837eb894bbd54e32f08f2deb97e7029b8'
  name 'Pyzo'
  homepage 'http://www.pyzo.org/'

  app 'pyzo.app'

  zap trash: '~/Library/Application Support/pyzo'
end
