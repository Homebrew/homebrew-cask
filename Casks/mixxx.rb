cask 'mixxx' do
  version '2.0.0'
  sha256 '8ba833269d87c00fbb77d08594e30c1fcc78cfa10b92a6d52457bd8d39e52649'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  name 'Mixxx'
  homepage 'https://www.mixxx.org'
  license :gpl

  app 'Mixxx.app'
end
