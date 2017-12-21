cask 'icloud-control' do
  version '1.1.0'
  sha256 '761e4f22d391eaa868ebf4b8851f0f56bf0b8aa3a6323496c0fb61b3d2602453'

  url "https://github.com/Obbut/iCloud-Control/releases/download/#{version}/iCloud.Control.app.zip"
  appcast 'https://github.com/Obbut/iCloud-Control/releases.atom',
          checkpoint: 'f505726cc994e11064876e91f1b2eae69e08a6f72e7dd7e8456a29cc1b0fd0e6'
  name 'iCloud Control'
  homepage 'https://github.com/Obbut/iCloud-Control'

  app 'iCloud Control.app'
end
