cask 'envkey' do
  version '1.2.8'
  sha256 'c26d55b27781060b910a124821d6d3662c448b9b2d52817e4ca02698bd8798ff'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom',
          checkpoint: 'b62623b612b51255b2456ae63579190029fb94cee1ca056dbe0c78d84c645ecf'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
