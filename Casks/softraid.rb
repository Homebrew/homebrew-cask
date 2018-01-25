cask 'softraid' do
  version '5.6.3'
  sha256 '7238187271d3d63df87be739e39b865714dae6b7dc84f5d3bd60254bb62ca881'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html',
          checkpoint: '91380ea320c7c87c8f236277a5c0787dc6e41822c80648a8e231450ef84350c4'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
