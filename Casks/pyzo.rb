cask 'pyzo' do
  version '4.6.1'
  sha256 '1341efa8fba71cffdbae17baeec4539a5c336101e12c8e37ee7f925d1eaf9d28'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom'
  name 'Pyzo'
  homepage 'http://www.pyzo.org/'

  app 'pyzo.app'

  zap trash: '~/Library/Application Support/pyzo'
end
