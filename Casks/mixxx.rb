cask 'mixxx' do
  version '2.2.1'
  sha256 '2c807e4df10e0a3d1ac68578eefe12831f18598135d54c1ec056cfcdd67731b4'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
