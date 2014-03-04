class P4merge < Cask
  url 'http://filehost.perforce.com/perforce/r13.4/bin.macosx106x86_64/P4V.dmg'
  homepage 'http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'
  version '2013.4'
  sha256 '0e1d193a353226b5452ec4a309bccf222f8fc973661a1e575a8b7f2359db123c'
  link 'p4merge.app'
  caveats <<-EOS.undent
    You can set up git to use p4merge as a merge tool by following the instructions available here:
      https://gist.github.com/henrik242/1510148
    EOS
end
