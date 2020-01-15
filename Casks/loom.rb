cask 'loom' do
  version '0.26.1'
  sha256 'e99ea7ba08da91be713073d1d67da6ddc97d65d69e2be8abaf3b57ac18cfddfb'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  app 'Loom.app'
end
