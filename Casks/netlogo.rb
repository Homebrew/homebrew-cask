cask 'netlogo' do
  version '5.3.1'
  sha256 'e5013c94a95b6e6d6a2186cbcbbde51d393dfac7240f512d918ad1bcb4b8b9d3'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version}.dmg"
  name 'NetLogo'
  homepage 'https://ccl.northwestern.edu/netlogo/'

  suite "NetLogo #{version}"

  zap delete: [
                '~/Library/Preferences/org.nlogo.netlogo.plist',
                '~/Library/Saved Application State/org.nlogo.NetLogo.savedState',
              ]
end
