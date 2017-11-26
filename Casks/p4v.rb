cask 'p4v' do
  version '2017.3'
  sha256 'fb753bc17ae96ccf09e4c258474b2ba2ea12695140b1e5d7c6c58b6c6543a945'

  url "http://cdist2.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/P4V.dmg"
  appcast "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/SHA256SUMS",
          checkpoint: '4a0f614a44c0cf4e38a7ce13def9b343abc9edb3f4b58ba7323a4664e85a2c62'
  name 'Perforce Visual Client'
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
