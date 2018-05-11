cask 'netlogo' do
  version '6.0.3'
  sha256 '5cccdfaff8af4f5556cf211f0bfe6e8c08ae7f17456932c8903125106acdf351'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  appcast 'https://ccl.northwestern.edu/netlogo/oldversions.shtml',
          checkpoint: 'b0ff96ad08709796d91ff19f1525f9059b3fa36a9e38e8da8c1293d980a8b5ef'
  name 'NetLogo'
  homepage 'https://ccl.northwestern.edu/netlogo/'

  suite "NetLogo #{version}"

  zap trash: [
               '~/Library/Preferences/org.nlogo.netlogo.plist',
               '~/Library/Saved Application State/org.nlogo.NetLogo.savedState',
             ]
end
