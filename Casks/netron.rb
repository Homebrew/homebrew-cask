cask 'netron' do
  version '1.6.6'
  sha256 '5c3866f69c7afffececa1deb36d2eeed5e49f28a6522237e1f1504f56bf29c4d'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'ddfba97be8fc7237b763ee648c506cb5da0836e9293c7161abeebe84de5cb630'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
