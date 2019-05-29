cask 'envkey' do
  version '1.4.11'
  sha256 '0a11a1ac62a1537e5ecff18007f6141f9b56d2ed5de0df6f921841562f69bf9a'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
