cask 'envkey' do
  version '1.4.5'
  sha256 '014e77b1c3939832be97e40499ea4443e741321be330eacabb151990fdc3ef0e'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
