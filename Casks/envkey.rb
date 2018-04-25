cask 'envkey' do
  version '1.3.4'
  sha256 'c1d401f4f1a685756ab99c88b5ff0ff3fd41bd4bcf8c9db2e99db695a19e897c'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom',
          checkpoint: '400b98d25be2c579668641894d6c07f91d3a54b6fbaa99e6ccb3e50fce71b619'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
