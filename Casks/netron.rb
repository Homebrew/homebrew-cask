cask 'netron' do
  version '2.6.2'
  sha256 'ea598c1d6e4ba794b3461ac298dac90dfe8c947587654b19dc5f37eac51a0712'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
