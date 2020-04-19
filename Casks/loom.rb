cask 'loom' do
  version '0.35.0'
  sha256 'ceea9e3aaeeeafa37caa15c8d358a00762a90a935b5c9ff8314a212bc378d30e'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
