cask 'pyzo' do
  version '4.6.0'
  sha256 'c7af2b6297b22dbe50879ea4b9a9fa4ceaa3103721cceccd5ef9dc0bc182dd99'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom'
  name 'Pyzo'
  homepage 'http://www.pyzo.org/'

  app 'pyzo.app'

  zap trash: '~/Library/Application Support/pyzo'
end
