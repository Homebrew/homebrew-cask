cask 'softraid' do
  version '5.6'
  sha256 'a255295d5e98fa47556f6aa54ef22ef7756fc5cd5256dc34cf312c41a520396f'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html',
          checkpoint: 'ac9af2488e40b380b2d51ba04a56a2d7cee70de9ac9ca040d385e2356bb9dea1'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
