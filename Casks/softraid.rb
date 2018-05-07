cask 'softraid' do
  version '5.6.7'
  sha256 '92aae577e163487fc801304b46e0f99581ad63ba33af6897bc4181e631614022'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html',
          checkpoint: '41fb061b2e2628f686b8241ae60cfde1245bd6e9a68d53c84000abbc8428cacf'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
  app "SoftRAID #{version}/SoftRAID Easy Setup.app"
end
