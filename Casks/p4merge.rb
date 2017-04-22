cask 'p4merge' do
  version '2017.1-1491634'
  sha256 'b015a82a7c0bd492edb972dc542b377a7633bad2148e4b3e2d800f7df0c9297a'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/P4V.dmg"
  name 'Perforce P4Merge'
  homepage 'https://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'

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
