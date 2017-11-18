cask 'netlogo' do
  version '6.0.2'
  sha256 '952954567aeed7da12340e024718e4ff62e2ee3cfcb7d8270845e07de0f26e80'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  appcast 'https://ccl.northwestern.edu/netlogo/oldversions.shtml',
          checkpoint: '3dee474eb1e89e0db506c115172b236f2c2b41b5d4d9c58238f6dd8cd5c1a3b8'
  name 'NetLogo'
  homepage 'https://ccl.northwestern.edu/netlogo/'

  suite "NetLogo #{version}"

  zap trash: [
               '~/Library/Preferences/org.nlogo.netlogo.plist',
               '~/Library/Saved Application State/org.nlogo.NetLogo.savedState',
             ]
end
