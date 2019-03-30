cask 'polymail' do
  version '2.1.3'
  sha256 'da8e75c5b5cabfcd39b70a35a61a3d15ebcee85107a1543d8e26a53626a3822e'

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
