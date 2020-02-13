cask 'sitebulb' do
  version '3.3'
  sha256 '494f3ce9cfd56f918ca299e262d7851a784e18de6c73f1d63f4b34b71a41265b'

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  appcast 'https://sitebulb.com/download/'
  name 'Sitebulb'
  homepage 'https://sitebulb.com/'

  app 'Sitebulb.app'
end
