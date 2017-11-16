cask 'macpass' do
  version '0.7'
  sha256 '970e877e0a83b5f35dcd2f1925dcd1cc4ba3fcf488300dd9caab7479186a2eef'

  # github.com/mstarke/MacPass was verified as official when first introduced to the cask
  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          checkpoint: '42772c052f4e95723428c49866086734d02061ea03ae905007cfa852c64bcdcf'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'

  app 'MacPass.app'
end
