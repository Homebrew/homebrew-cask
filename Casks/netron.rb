cask 'netron' do
  version '3.1.0'
  sha256 '0c805152ebe138ed7328709b1ddcc1341e80d0dea7564576ed6d6a3466483127'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
