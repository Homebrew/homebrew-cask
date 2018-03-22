cask 'netlogo' do
  version '6.0.3'
  sha256 '6d3c9da4d1bffc79689666d6319fa9ff3d2cf7e779027a1c457b3395cc12582f'

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
