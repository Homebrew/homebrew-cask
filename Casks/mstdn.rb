cask 'mstdn' do
  version '0.2.6'
  sha256 '21b813859bb5e3074c43c3f0f0999f41746d7480f73ea4714ca5f22cc4deb467'

  url "https://github.com/rhysd/Mstdn/releases/download/v#{version}/Mstdn-darwin-x64-#{version}.zip"
  appcast 'https://github.com/rhysd/Mstdn/releases.atom'
  name 'Mstdn'
  homepage 'https://github.com/rhysd/Mstdn'

  app 'Mstdn-darwin-x64/Mstdn.app'
end
