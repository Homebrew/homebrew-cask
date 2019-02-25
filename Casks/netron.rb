cask 'netron' do
  version '2.9.1'
  sha256 'be3a7449e0f55feaed2493e766b97631aa7a4cf9a58cf075fb55bbdc9edcc4ab'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
