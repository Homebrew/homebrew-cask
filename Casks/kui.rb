cask 'kui' do
  version '8.9.4'
  sha256 'e1dd127c6f3f2b90523cfba4222f5134d78f0b29c80ac7db9b92a1a638fe039f'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
end
