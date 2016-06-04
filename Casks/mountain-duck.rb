cask 'mountain-duck' do
  version '1.4.0.4007'
  sha256 '8f940abdea35f10fed133f5740385d7355f64bd08af25ba33d87e2823e4d5f9d'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '41ed60c4059267cd1bd3a182e4bccd0d2c16233175c79cacde6945efdb1cae07'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
