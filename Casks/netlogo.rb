cask 'netlogo' do
  version '6.1.0'
  sha256 '4a074f0edcc4e977e08eb72ca4f02a8eb45cb7cffaf3ad33df56029658ba41d1'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  appcast 'https://ccl.northwestern.edu/netlogo/oldversions.shtml'
  name 'NetLogo'
  homepage 'https://ccl.northwestern.edu/netlogo/'

  suite "NetLogo #{version}"

  zap trash: [
               '~/Library/Preferences/org.nlogo.netlogo.plist',
               '~/Library/Saved Application State/org.nlogo.NetLogo.savedState',
             ]
end
