cask 'pyzo' do
  version '4.9.0'
  sha256 'c024a34043736e815e6bac906a9000fc76d45ab5684e7268b3639f81ed9d1bc2'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom'
  name 'Pyzo'
  homepage 'https://pyzo.org/'

  app 'pyzo.app'

  zap trash: '~/Library/Application Support/pyzo'
end
