cask 'loom' do
  version '0.30.0'
  sha256 'd91716cce329f3b3a65bf95fc343f63b325e1bea96bd03ac10928b60efd4798f'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
