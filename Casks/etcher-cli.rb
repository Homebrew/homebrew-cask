cask 'etcher-cli' do
  version '1.4.4'
  sha256 '889de471078f2ceb213cb3b83a3ea9edf1c96c193e53e500eb3487e33d591131'

  # github.com/resin-io/etcher was verified as official when first introduced to the cask
  url "https://github.com/resin-io/etcher/releases/download/v#{version}/etcher-cli-#{version}-darwin-x64.tar.gz"
  name 'Etcher CLI'
  homepage 'https://etcher.io/cli/'

  binary "etcher-cli-#{version}-darwin-x64-dist/etcher"
end
