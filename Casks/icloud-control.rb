cask 'icloud-control' do
  version '1.1.0'
  sha256 '761e4f22d391eaa868ebf4b8851f0f56bf0b8aa3a6323496c0fb61b3d2602453'

  url "https://github.com/Obbut/iCloud-Control/releases/download/#{version}/iCloud.Control.app.zip"
  appcast 'https://github.com/Obbut/iCloud-Control/releases.atom'
  name 'iCloud Control'
  homepage 'https://github.com/Obbut/iCloud-Control'

  app 'iCloud Control.app'
end
