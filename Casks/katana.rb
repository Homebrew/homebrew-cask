cask 'katana' do
  version '1.4.1'
  sha256 '47712925c772150326e798f809e5037a9426f0629eb0a7d0bb71fea79f3f68d1'

  url "https://github.com/bluegill/katana/releases/download/v#{version}/katana-#{version}-mac.zip"
  appcast 'https://github.com/bluegill/katana/releases.atom',
          checkpoint: 'de1fa71a1413cd31f37f55182523b86534cade409d51807756ec9a83dd07d2d1'
  name 'Katana'
  homepage 'https://github.com/bluegill/katana/'

  app 'Katana.app'
end
