cask 'envkey' do
  version '1.4.16'
  sha256 '69ae043e87a05a999d37ef1109300938ff3aaddadfcf5562921cff2dd6d9f8f1'

  # github.com/envkey/envkey-app/ was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
