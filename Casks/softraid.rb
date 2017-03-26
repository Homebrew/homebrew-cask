cask 'softraid' do
  version '5.5.6'
  sha256 '6c1ea77a982d12ec5b78121e5217be04d7ce822afee1b201e75b4e81a8c6b729'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/updates/Latest_SoftRAID_Release.html',
          checkpoint: '39819a5c4955646bbb59aed2cfc5b9363d774b0594f4bbb13306ba7eee89b44c'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
