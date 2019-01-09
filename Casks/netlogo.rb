cask 'netlogo' do
  version '6.0.4'
  sha256 '07657a6c464bf27762f866c952e2acea31e801c26798c66282efacfbe7271841'

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
