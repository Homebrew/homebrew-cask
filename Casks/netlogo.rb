cask :v1 => 'netlogo' do
  version '5.2.0'
  sha256 '72ea2f242e3f580ad19250361d792628f4e95e6996be9007d8b21ffd134d6252'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo%20#{version.sub(%r{\.\d+$},'')}.dmg"
  name 'NetLogo'
  homepage 'http://ccl.northwestern.edu/netlogo/'
  license :gpl

  zap :delete => [
    '~/Library/Preferences/org.nlogo.netlogo.plist',
    '~/Library/Saved Application State/org.nlogo.NetLogo.savedState'
  ]

  app "NetLogo #{version.sub(%r{\.\d+$},'')}/NetLogo #{version.sub(%r{\.\d+$},'')}.app"
end
