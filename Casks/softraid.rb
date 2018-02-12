cask 'softraid' do
  version '5.6.4'
  sha256 'dff0902afa6630571ed6a162758019d69632e7bb97bdd7ec51073fea1c467450'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html',
          checkpoint: '2831aac31291a90502e4d97bfbba73d68826868dd03794b525b2aa9f4c119332'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
