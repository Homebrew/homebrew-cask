cask 'envkey' do
  version '1.4.10'
  sha256 '319d5be1326ba2f86762ff77debda8486ae75c2ade3ea7f2d9f71e8a0e70bb21'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
