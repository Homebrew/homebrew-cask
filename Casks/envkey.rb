cask 'envkey' do
  version '1.1.2'
  sha256 '0ff241af694cac69fb2553971082f873bc3b9d0121cf69539ee9676870c1572e'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom',
          checkpoint: 'cbbd075aeab22f3f056b68cad5a71249ef0c840540ffa17b4983785b9cfae089'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
