cask :v1 => 'netlogo' do
  version '5.1.0'
  sha256 'e2c56ba16fedba36b9868321c774fa1a5e4f4a2ec0a5268381488f376a4f4d3e'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo%20#{version}.dmg"
  name 'NetLogo'
  homepage 'http://ccl.northwestern.edu/netlogo/'
  license :gpl

  zap :delete => [
    '~/Library/Preferences/org.nlogo.netlogo.plist',
    '~/Library/Saved Application State/org.nlogo.NetLogo.savedState'
  ]

  app "NetLogo #{version}/NetLogo #{version}.app"
end
