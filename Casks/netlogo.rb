cask 'netlogo' do
  version '6.0.3'
  sha256 '5cccdfaff8af4f5556cf211f0bfe6e8c08ae7f17456932c8903125106acdf351'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  appcast 'https://ccl.northwestern.edu/netlogo/oldversions.shtml',
          checkpoint: '1351f25e5c59bbf9f6a08cda8371fa2b7aec4f0d75c3736020cb408656833473'
  name 'NetLogo'
  homepage 'https://ccl.northwestern.edu/netlogo/'

  suite "NetLogo #{version}"

  zap trash: [
               '~/Library/Preferences/org.nlogo.netlogo.plist',
               '~/Library/Saved Application State/org.nlogo.NetLogo.savedState',
             ]
end
