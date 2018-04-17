cask 'softraid' do
  version '5.6.5'
  sha256 'd63197addd6d752dae34bdef49eb74935564f6e1e693d37a5b9af9344515db58'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html',
          checkpoint: 'a0ae713bfd5980bfd6c61f455acc5c2c3fdb5b278f9e798854b2b4cac3a9745e'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
