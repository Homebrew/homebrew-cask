cask 'envkey' do
  version '1.4.15'
  sha256 'e42ce2d5537e3cec7f6ad8655ed6ab5444071b8e4ddec8f151e49d3cd58f1ce4'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
