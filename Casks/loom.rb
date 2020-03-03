cask 'loom' do
  version '0.30.4'
  sha256 '90eca52662d6338905fed60c0f3a67393ac9881d549382b20b7da8002847d29d'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
