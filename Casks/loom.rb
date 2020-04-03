cask 'loom' do
  version '0.33.4'
  sha256 '6d4dea090ff2fc910a3e48d44763b36c21562514932a8f2cf47bd7a80902eb49'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
