cask 'softraid' do
  version '5.7'
  sha256 '8787f42e52dd8e396670b9e7f9a8f38e3c8136125e67d46abb1bdde092b471c4'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
  app "SoftRAID #{version}/SoftRAID Easy Setup.app"
end
