cask 'envkey' do
  version '1.4.2'
  sha256 '8b53dd1f3a554954deb038855a7281ba56ea49750b181e5242f0ef21bf061ca4'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
