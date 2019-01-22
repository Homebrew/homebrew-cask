cask 'pharo-launcher' do
  version '1.5.1'
  sha256 'ecef3c2a475d5f79f7bbb5e3facabaf3aea68c935cb4479d9463d09e871e7d42'

  url "https://files.pharo.org/pharo-launcher/#{version}/PharoLauncher-#{version}-x64.dmg"
  name 'Pharo Launcher'
  homepage 'http://pharo.org/download'

  app 'PharoLauncher.app'
end
