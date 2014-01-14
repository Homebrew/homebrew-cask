class P4merge < Cask
  url 'http://filehost.perforce.com/perforce/r13.4/bin.macosx106x86_64/P4V.dmg'
  homepage 'http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'
  version '2013.4'
  sha1 '5b22abe5a405e9b48f4c76ed31766b933bb20c32'
  link 'p4merge.app'
  caveats <<-EOS.undent
    You can set up git to use p4merge as a merge tool by following the instructions available here:
      https://gist.github.com/henrik242/1510148
    EOS
end
