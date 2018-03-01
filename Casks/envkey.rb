cask 'envkey' do
  version '1.2.10'
  sha256 'caed553e2218d900a2e784022d16205718b7272cdb4c8e20f34b75117c2a676b'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom',
          checkpoint: 'b3d1c8cf7b9091f85ab4fbeb26c1a930e9742eee354d3913991144748732ee56'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
