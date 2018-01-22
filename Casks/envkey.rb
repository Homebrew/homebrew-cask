cask 'envkey' do
  version '1.2.7'
  sha256 'b11fc60d19e94f1eb282fce2a2a9d1dc695e7a451492b236c7dfcfb4221c0aeb'

  # github.com/envkey/envkey-app was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast 'https://github.com/envkey/envkey-app/releases.atom',
          checkpoint: '8c2acb6120135929b5af0464ed8a2301bc83c96cef20e8d19f83f159adfec131'
  name 'EnvKey'
  homepage 'https://www.envkey.com/'

  app 'EnvKey.app'
end
