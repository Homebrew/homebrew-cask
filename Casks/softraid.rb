cask 'softraid' do
  version '5.6.5'
  sha256 'd63197addd6d752dae34bdef49eb74935564f6e1e693d37a5b9af9344515db58'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html',
          checkpoint: 'fdcaef7786fadbb9afef2a2ecf63a7cf0977385eed6f603ccfa557d6974abd3c'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
  app "SoftRAID #{version}/SoftRAID Easy Setup.app"
end
