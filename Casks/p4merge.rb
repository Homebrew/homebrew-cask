cask 'p4merge' do
  version '2017.2-1532340'
  sha256 '138e43f5b6cc11a9dfd27c54eb3f8577c77954c64e3c7f33be30abb542e5f56b'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/P4V.dmg"
  name 'Perforce P4Merge'
  homepage 'https://www.perforce.com/products/helix-apps/merge-diff-tool-p4merge'

  app 'p4merge.app'

  zap delete: [
                '~/Library/Preferences/com.perforce.p4merge',
                '~/Library/Preferences/com.perforce.p4merge.plist',
                '~/Library/Saved Application State/com.perforce.p4merge.savedState',
              ]

  caveats <<-EOS.undent
    git can be configured to use p4merge as a merge tool via

      https://pempek.net/articles/2014/04/18/git-p4merge/
  EOS
end
