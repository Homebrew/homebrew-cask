cask :v1 => 'netlogo' do
  version '5.2.1'
  sha256 '0c5d57f9109ce1a0b9bc0cc2a7e8177d7e6b34699baf8ebfc7d0d0331e692f22'

  url "https://ccl.northwestern.edu/netlogo/#{version}/NetLogo%20#{version}.dmg"
  name 'NetLogo'
  homepage 'http://ccl.northwestern.edu/netlogo/'
  license :gpl

  zap :delete => [
    '~/Library/Preferences/org.nlogo.netlogo.plist',
    '~/Library/Saved Application State/org.nlogo.NetLogo.savedState'
  ]

  app "NetLogo #{version.sub(%r{\.\d+$},'')}/NetLogo #{version.sub(%r{\.\d+$},'')}.app"
end
