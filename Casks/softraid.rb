cask 'softraid' do
  version '5.5.5'
  sha256 '7060315cbb235fb029d5c3a122ef46df6d463fa8577224dc9e7b7327f6839513'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/updates/Latest_SoftRAID_Release.html',
          checkpoint: '0ca79dffbd602b6c4fc129f3f57accbbd3af4042bf03903a83c4d94cdae7c312'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
