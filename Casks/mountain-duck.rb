cask 'mountain-duck' do
  version '2.4.0.9334'
  sha256 '3d80601676373f21b67b62f7ae7f551717d8978fa002e5cb534577394453f654'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '47b268ba832d08d8f537f45d0fcf21408f51574146126813441f79e088cdbc8d'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
