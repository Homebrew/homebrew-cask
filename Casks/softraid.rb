cask 'softraid' do
  version '5.7.3'
  sha256 'dff834031f557006a6ff6f1553012ddbf5a2d94bd1d91dc8f76905d7d7ab6bff'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
  app "SoftRAID #{version}/SoftRAID Easy Setup.app"
end
