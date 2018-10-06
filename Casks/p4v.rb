cask 'p4v' do
  version '18.3-1706936'
  sha256 'ff1d378906e22b13d7227fc4b3def17b1ebe957025cefe65e0f2737d1e57a493'

  url "https://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/P4V.dmg"
  appcast "https://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/SHA256SUMS"
  name 'Perforce Visual Client'
  name 'P4Merge'
  name 'P4V'
  homepage 'https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v'

  app 'p4v.app'
  app 'p4admin.app'
  app 'p4merge.app'
  binary 'p4vc'

  zap trash: [
               '~/Library/Preferences/com.perforce.p4v',
               '~/Library/Preferences/com.perforce.p4v.plist',
               '~/Library/Saved Application State/com.perforce.p4v.savedState',
             ]
end
