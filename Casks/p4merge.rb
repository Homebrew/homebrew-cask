cask 'p4merge' do
  version '2015.2-1312139'
  sha256 '7466f80e1eeb3cb31940de614505b9353ca15b5ea80e1016e5eb037096687f59'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx107x86_64/P4V.dmg"
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
