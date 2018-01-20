cask 'p4v' do
  version '2017.3'
  sha256 '09a7a2f36bad7a742bc1db7bdb857fad392103c97990050ed0c48b78cfda040f'

  url "http://cdist2.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/P4V.dmg"
  appcast "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/SHA256SUMS",
          checkpoint: '4fbb1d0140f3a71064c7376446a4154f12e697877a28e98c52c4018b61d46e5c'
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
