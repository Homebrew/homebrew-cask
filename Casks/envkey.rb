cask 'envkey' do
  version '1.2.9'
  sha256 '2e2dd1197afaaa0400b55cbc215524cbc7a4b47fe2dbbe35a1bcc0b6c2c83e03'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom',
          checkpoint: '005ce4776e0ecc452b9e0a005042a86313f73a22b29ebd7c14ac5187d9cacffb'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
