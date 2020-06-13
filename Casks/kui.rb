cask 'kui' do
  version '8.9.1'
  sha256 '41778159c8fe32d77ca84449d81ccb2674656a5bbe3a1d45eea187543e572b9e'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
end
