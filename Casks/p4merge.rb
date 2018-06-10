cask 'p4merge' do
  version '2018.2-1661700'
  sha256 '3cd9bb520a1193b6d93c2b0fbeb853c05aa3fd9d552cb82b154297fe6d2e1eda'

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
