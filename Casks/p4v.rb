cask 'p4v' do
  version '18.2-1687764'
  sha256 'fb2d3cfc7af9ac26f0d7e57415b7f983f81b389db0ca7c1d75b11f1d35931c44'

  url "http://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/P4V.dmg"
  appcast "http://filehost.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/SHA256SUMS"
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
