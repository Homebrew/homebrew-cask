cask 'envkey' do
  version '1.3.6'
  sha256 '71180cb79fcb19bdc610dfd888d1278369ae31038cc754ddb9538aec91940fa8'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom',
          checkpoint: '0390a998b90d0236f66d3e0e0c517227bffa20ca1615155e4ca04853744836db'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
