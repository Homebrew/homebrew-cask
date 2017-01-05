cask 'netlogo' do
  version '6.0'
  sha256 '7ed687afc901130a83019ecff45f40fa0576bfbe2beb470a400de48a2378f566'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  name 'NetLogo'
  homepage 'https://ccl.northwestern.edu/netlogo/'

  suite "NetLogo #{version}"

  zap delete: [
                '~/Library/Preferences/org.nlogo.netlogo.plist',
                '~/Library/Saved Application State/org.nlogo.NetLogo.savedState',
              ]
end
