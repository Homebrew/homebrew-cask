cask 'pyzo' do
  version '4.10.2'
  sha256 '181057b3e01606467810a0d9671ccb9c267af0d433f370b699d888870fdee9b1'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom'
  name 'Pyzo'
  homepage 'https://pyzo.org/'

  app 'pyzo.app'

  zap trash: '~/Library/Application Support/pyzo'
end
