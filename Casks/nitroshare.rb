cask 'nitroshare' do
  version '0.3.4'
  sha256 'c76fc72f25dca27b371e8ed37488a11da625063a339452702d350f5ec6e557f7'

  url "https://launchpad.net/nitroshare/#{version.major_minor}/#{version}/+download/nitroshare-#{version}-osx.dmg"
  appcast 'https://github.com/nitroshare/nitroshare-desktop/releases.atom',
          checkpoint: '45c7228a8a574c480784af8e6e25d3a667cf7063872fbb95a3c6a119f4d12247'
  name 'NitroShare'
  homepage 'https://launchpad.net/nitroshare'

  app 'NitroShare.app'
end
