cask 'netlogo' do
  version '5.3.0'
  sha256 'c6cf96f6c3e788b4015d56e6679c5cb6ee46799f610d482ab8a83eff5aae6630'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo-#{version.to_f}.dmg"
  name 'NetLogo'
  homepage 'https://ccl.northwestern.edu/netlogo/'
  license :gpl

  app "NetLogo #{version.to_f}/NetLogo #{version.to_f}.app"

  zap delete: [
                '~/Library/Preferences/org.nlogo.netlogo.plist',
                '~/Library/Saved Application State/org.nlogo.NetLogo.savedState',
              ]
end
