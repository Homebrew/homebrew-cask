cask 'envkey' do
  version '1.4.0'
  sha256 '009f3c88b1865114bcc368c4afa2fcf19a21f80e9a0e78d804a94de3f17b7a2d'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
