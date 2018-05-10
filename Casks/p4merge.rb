cask 'p4merge' do
  version '2018.2-1652877'
  sha256 '78d5beaa245ecf023939e45bccc26a6f215908e50fbb4e7155ab2581f5b01dbb'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1013x86_64/P4V.dmg"
  name 'Perforce P4Merge'
  homepage 'https://www.perforce.com/products/helix-apps/merge-diff-tool-p4merge'

  app 'p4merge.app'

  zap trash: [
               '~/Library/Preferences/com.perforce.p4merge',
               '~/Library/Preferences/com.perforce.p4merge.plist',
               '~/Library/Saved Application State/com.perforce.p4merge.savedState',
             ]
end
