cask 'netron' do
  version '2.5.3'
  sha256 'ed8aaeb79bb3008a81b9ccf95ca24bfc24608ae0b6e25a29c23fdd39df04553f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
