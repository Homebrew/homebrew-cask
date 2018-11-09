cask 'pharo-launcher' do
  version '1.4.6'
  sha256 'dca14150cfa34871dc054277673658fa338a6bba8a48a9a8ad1835a8b92add94'

  url "https://files.pharo.org/pharo-launcher/#{version}/PharoLauncher-#{version}-x64.dmg"
  name 'Pharo Launcher'
  homepage 'http://pharo.org/download'

  app 'PharoLauncher.app'
end
