cask 'envkey' do
  version '1.1.2'
  sha256 '0ff241af694cac69fb2553971082f873bc3b9d0121cf69539ee9676870c1572e'

  # github.com/envkey was verified as official when first introduced to the cask
  url 'https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v1.1.2/EnvKey-1.1.2-mac.zip'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
