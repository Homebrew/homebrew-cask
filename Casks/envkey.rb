cask 'envkey' do
  version '1.1.4'
  sha256 '1c530c83cd7a1ab2c6045e7e547604d41b9f533fa20318f1a0a7590087daeb0e'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom',
          checkpoint: '639c8b131a363063becff804284d3c2aeccb01b214c1c0f535341ddc03e7358a'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
