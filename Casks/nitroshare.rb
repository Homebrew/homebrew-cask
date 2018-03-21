cask 'nitroshare' do
  version '0.3.4'
  sha256 'c76fc72f25dca27b371e8ed37488a11da625063a339452702d350f5ec6e557f7'

  url "https://launchpad.net/nitroshare/#{version.major_minor}/#{version}/+download/nitroshare-#{version}-osx.dmg"
  appcast 'https://github.com/nitroshare/nitroshare-desktop/releases.atom',
          checkpoint: 'ab6fa11eb8dcd73b1af93f41e43949dcb23dc9f6803d16bb311a0f49018dc9c0'
  name 'NitroShare'
  homepage 'https://launchpad.net/nitroshare'

  app 'nitroshare.app'
end
