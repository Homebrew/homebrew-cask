cask 'netlogo' do
  version '6.0.1'
  sha256 '081b34feb3357eaee21f3b91355efa9f9471e05029697c24c0f55a2e4d5af5f5'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  appcast 'https://ccl.northwestern.edu/netlogo/oldversions.shtml',
          checkpoint: '8f6e88b9ad1d1e73ee9e7c152ba03bf88f47706b59e95004033151fe5cb1f5c7'
  name 'NetLogo'
  homepage 'https://ccl.northwestern.edu/netlogo/'

  suite "NetLogo #{version}"

  zap delete: [
                '~/Library/Preferences/org.nlogo.netlogo.plist',
                '~/Library/Saved Application State/org.nlogo.NetLogo.savedState',
              ]
end
