cask 'p4merge' do
  version '2018.1-1637591'
  sha256 '44208c7a48742af0d84d67d78d569a1c77cea2dc9117b03116122880bc66af05'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/P4V.dmg"
  name 'Perforce P4Merge'
  homepage 'https://www.perforce.com/products/helix-apps/merge-diff-tool-p4merge'

  app 'p4merge.app'

  zap trash: [
               '~/Library/Preferences/com.perforce.p4merge',
               '~/Library/Preferences/com.perforce.p4merge.plist',
               '~/Library/Saved Application State/com.perforce.p4merge.savedState',
             ]

  caveats <<~EOS
    git can be configured to use p4merge as a merge tool via

      https://pempek.net/articles/2014/04/18/git-p4merge/
  EOS
end
