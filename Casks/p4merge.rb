cask 'p4merge' do
  version '2017.2-1535556'
  sha256 '3ca645e4c55848b377181f27854cf0cf2b99c9bd288a570c49c98f35baeb22b1'

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
