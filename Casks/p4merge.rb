cask 'p4merge' do
  version '2015.2-1312139'
  sha256 '6f64cca4e84d344c5f420e58a72bd07c4fbf5f3eb9665b165acd8baa36c18eb9'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx107x86_64/P4V.dmg"
  name 'Perforce P4Merge'
  homepage 'https://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'
  license :gratis

  app 'p4merge.app'

  zap delete: [
                '~/Library/Preferences/com.perforce.p4merge',
                '~/Library/Preferences/com.perforce.p4merge.plist',
                '~/Library/Saved Application State/com.perforce.p4merge.savedState',
              ]

  caveats <<-EOS.undent
    git can be configured to use p4merge as a merge tool via

      http://pempek.net/articles/2014/04/18/git-p4merge/
  EOS
end
