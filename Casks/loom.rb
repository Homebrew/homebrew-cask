cask 'loom' do
  version '0.36.0'
  sha256 '618f57e811ddd17e2f40d0e32da8b9cdb633c3ab358e0a5c1192d796f713d413'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
